programa
{
    // ============================================================
    //  HYPER-PORTUGOL RPG ENGINE v3.0
    //  Linguagem: Portugol Studio (.por)
    //  NOVO: Sistema de mapa procedural + movimentação visual
    // ============================================================

    inclua biblioteca Matematica
    inclua biblioteca Texto
    inclua biblioteca Util
    inclua biblioteca Tipos

    // ============================================================
    //  SECAO 1: DECLARACAO DE VARIAVEIS GLOBAIS
    // ============================================================

    // --- Atributos do jogador ---
    inteiro vida = 0, vida_max = 0
    inteiro mana = 0, mana_max = 0
    inteiro atk = 0, def = 0, agilidade = 0
    inteiro xp = 0, nivel = 0
    inteiro ouro = 0, peso_atual = 0

    cadeia nome_jogador = ""
    cadeia classe_jogador = ""
    cadeia status_efeito = ""

    cadeia inventario[15]
    cadeia equipamento[3]

    inteiro opcao = 0
    logico jogo_ativo = falso
    logico em_combate
    logico personagem_criado

    // ============================================================
    //  SECAO 2: MAPA PROCEDURAL
    //  O mapa substitui o mundo[15][15] fixo.
    //  Tamanho: 10 linhas x 50 colunas (gerado via random walk)
    // ============================================================

    inteiro MAPA_X = 10
    inteiro MAPA_Y = 50

    // Células do mapa (estado do caminho)
    cadeia mapa[10][50]

    // Posição do jogador
    inteiro jogador_x, jogador_y

    // Posição final alcançada pelo gerador
    inteiro chegada_x, chegada_y

    // Controle do gerador
    logico parar_geracao
    inteiro tentativas_mapa

    // ============================================================
    //  SECAO 3: INIMIGOS NO MAPA
    //  Até 12 inimigos são espalhados pelo mapa após a geração.
    //  Cada inimigo tem posição (x,y), nome, emoji e se ainda vive.
    // ============================================================

    inteiro max_inimigos = 12

    inteiro inimigo_pos_x[12]
    inteiro inimigo_pos_y[12]
    cadeia  inimigo_emoji[12]
    cadeia  inimigo_tipo[12]    // "Goblin", "Lobo", etc.
    logico  inimigo_vivo[12]

    // Inimigo em combate atual
    cadeia  combate_nome
    cadeia  combate_emoji
    inteiro combate_vida
    inteiro combate_atk
    inteiro combate_def
    inteiro combate_agilidade
    inteiro combate_xp
    inteiro combate_ouro
    inteiro combate_idx          // índice do inimigo no vetor

    // ============================================================
    //  SECAO 4: BIOMAS (baseados na posição X no mapa)
    //  0-1: Planície | 2-3: Floresta | 4-5: Pântano
    //  6-7: Ruínas   | 8-9: Masmorra
    // ============================================================

    funcao cadeia bioma_em(inteiro px)
    {
        se (px <= 1) { retorne "Planície" }
        senao se (px <= 3) { retorne "Floresta" }
        senao se (px <= 5) { retorne "Pântano" }
        senao se (px <= 7) { retorne "Ruínas" }
        senao { retorne "Masmorra" }
    }

    funcao cadeia emoji_bioma(inteiro px)
    {
        se (px <= 1) { retorne "🌾" }
        senao se (px <= 3) { retorne "🌲" }
        senao se (px <= 5) { retorne "🌿" }
        senao se (px <= 7) { retorne "🏚" }
        senao { retorne "💀" }
    }

    // ============================================================
    //  SECAO 5: GERADOR DE MAPA PROCEDURAL
    // ============================================================

    funcao gerar_passo_mapa()
    {
        // Encontra a posição marcada com "O" (frente do caminho)
        inteiro xPos = 0, yPos = 0
        para (inteiro i = 0; i < MAPA_X; i++) {
            para (inteiro j = 0; j < MAPA_Y; j++) {
                se (mapa[i][j] == "O") {
                    xPos = i
                    yPos = j
                }
            }
        }

        // Verifica quais direções estão livres (== "Nada")
        inteiro disponivel[4]   // 0=esq 1=dir 2=baixo 3=cima
        se (yPos - 1 >= 0       e mapa[xPos][yPos-1] == "Nada") { disponivel[0] = 0 } senao { disponivel[0] = 1 }
        se (yPos + 1 < MAPA_Y   e mapa[xPos][yPos+1] == "Nada") { disponivel[1] = 0 } senao { disponivel[1] = 1 }
        se (xPos + 1 < MAPA_X   e mapa[xPos+1][yPos] == "Nada") { disponivel[2] = 0 } senao { disponivel[2] = 1 }
        se (xPos - 1 >= 0       e mapa[xPos-1][yPos] == "Nada") { disponivel[3] = 0 } senao { disponivel[3] = 1 }

        // Verifica se há saída
        logico tem_saida = falso
        para (inteiro i = 0; i < 4; i++) {
            se (disponivel[i] == 0) { tem_saida = verdadeiro }
        }

        se (tem_saida == falso) {
            parar_geracao = verdadeiro
            chegada_x = xPos
            chegada_y = yPos
            retorne
        }

        // Escolhe direção aleatória disponível
        logico escolhido = falso
        enquanto (escolhido == falso) {
            inteiro lado = Util.sorteia(1, 4)
            se (lado == 1 e disponivel[0] == 0) {
                mapa[xPos][yPos]   = "Caminho"
                mapa[xPos][yPos-1] = "O"
                escolhido = verdadeiro
            }
            senao se (lado == 2 e disponivel[1] == 0) {
                mapa[xPos][yPos]   = "Caminho"
                mapa[xPos][yPos+1] = "O"
                escolhido = verdadeiro
            }
            senao se (lado == 3 e disponivel[2] == 0) {
                mapa[xPos][yPos]   = "Caminho"
                mapa[xPos+1][yPos] = "O"
                escolhido = verdadeiro
            }
            senao se (lado == 4 e disponivel[3] == 0) {
                mapa[xPos][yPos]   = "Caminho"
                mapa[xPos-1][yPos] = "O"
                escolhido = verdadeiro
            }
        }
    }

    funcao gerar_mapa()
    {
        logico mapa_bom = falso
        tentativas_mapa = 0

        enquanto (mapa_bom == falso)
        {
            tentativas_mapa++
            parar_geracao = falso

            // Limpa o mapa
            para (inteiro i = 0; i < MAPA_X; i++) {
                para (inteiro j = 0; j < MAPA_Y; j++) {
                    mapa[i][j] = "Nada"
                }
            }

            // Ponto de partida aleatório na coluna 0
            inteiro sx = Util.sorteia(1, MAPA_X - 2)
            mapa[sx][0] = "O"
            jogador_x = sx
            jogador_y = 0

            // Executa o random walk
            enquanto (parar_geracao == falso) {
                gerar_passo_mapa()
            }

            // Converte "O" final para "Caminho" e conta caminhos
            para (inteiro i = 0; i < MAPA_X; i++) {
                para (inteiro j = 0; j < MAPA_Y; j++) {
                    se (mapa[i][j] == "O") { mapa[i][j] = "Caminho" }
                }
            }

            inteiro contagem = 0
            para (inteiro i = 0; i < MAPA_X; i++) {
                para (inteiro j = 0; j < MAPA_Y; j++) {
                    se (mapa[i][j] == "Caminho") { contagem++ }
                }
            }

            // Aceita mapa se tiver caminho longo o suficiente e chegar perto do fim
            se (contagem > 64 e chegada_y >= MAPA_Y - 1) {
                mapa_bom = verdadeiro
            }
        }
    }

    // ============================================================
    //  SECAO 6: ESPALHAR INIMIGOS NO MAPA
    // ============================================================

    funcao popular_inimigos()
    {
        // Zera todos os inimigos
        para (inteiro i = 0; i < max_inimigos; i++) {
            inimigo_vivo[i] = falso
        }

        // Coleta todas as posições de caminho disponíveis (exceto início)
        // e sorteia posições para os inimigos
        inteiro colocados = 0

        enquanto (colocados < max_inimigos) {
            inteiro rx = Util.sorteia(0, MAPA_X - 1)
            inteiro ry = Util.sorteia(2, MAPA_Y - 1)   // nunca na coluna 0 ou 1 (spawn)

            se (mapa[rx][ry] == "Caminho") {
                // Verifica se já tem inimigo nessa célula
                logico celula_livre = verdadeiro
                para (inteiro k = 0; k < colocados; k++) {
                    se (inimigo_pos_x[k] == rx e inimigo_pos_y[k] == ry) {
                        celula_livre = falso
                    }
                }

                se (celula_livre) {
                    inimigo_pos_x[colocados] = rx
                    inimigo_pos_y[colocados] = ry
                    inimigo_vivo[colocados]  = verdadeiro

                    // Tipo de inimigo baseado no bioma (linha rx)
                    inteiro roll = Util.sorteia(1, 5)
                    se (rx <= 1) {
                        se (roll <= 3) { inimigo_tipo[colocados] = "Goblin"    inimigo_emoji[colocados] = "👺" }
                        senao         { inimigo_tipo[colocados] = "Lobo"      inimigo_emoji[colocados] = "🐺" }
                    }
                    senao se (rx <= 3) {
                        se (roll <= 2) { inimigo_tipo[colocados] = "Lobo"       inimigo_emoji[colocados] = "🐺" }
                        senao se (roll <= 4) { inimigo_tipo[colocados] = "Esqueleto"  inimigo_emoji[colocados] = "💀" }
                        senao         { inimigo_tipo[colocados] = "Goblin"    inimigo_emoji[colocados] = "👺" }
                    }
                    senao se (rx <= 5) {
                        se (roll <= 2) { inimigo_tipo[colocados] = "Troll"      inimigo_emoji[colocados] = "👾" }
                        senao se (roll <= 4) { inimigo_tipo[colocados] = "Esqueleto"  inimigo_emoji[colocados] = "💀" }
                        senao         { inimigo_tipo[colocados] = "Necromante" inimigo_emoji[colocados] = "🧙" }
                    }
                    senao se (rx <= 7) {
                        se (roll <= 2) { inimigo_tipo[colocados] = "Necromante" inimigo_emoji[colocados] = "🧙" }
                        senao se (roll <= 4) { inimigo_tipo[colocados] = "Troll"      inimigo_emoji[colocados] = "👾" }
                        senao         { inimigo_tipo[colocados] = "Esqueleto"  inimigo_emoji[colocados] = "💀" }
                    }
                    senao {
                        se (roll <= 3) { inimigo_tipo[colocados] = "Necromante" inimigo_emoji[colocados] = "🧙" }
                        senao         { inimigo_tipo[colocados] = "Troll"      inimigo_emoji[colocados] = "👾" }
                    }

                    colocados++
                }
            }
        }
    }

    // ============================================================
    //  SECAO 7: RENDERIZACAO DO MAPA
    // ============================================================

    funcao desenhar_mapa()
    {
        limpa()
        cadeia charTeto   = "═"
        cadeia charParede = "║"

        // Borda superior
        escreva("╔")
        para (inteiro k = 0; k < MAPA_Y; k++) { escreva(charTeto) }
        escreva("╗\n")

        para (inteiro i = 0; i < MAPA_X; i++)
        {
            escreva(charParede)
            para (inteiro j = 0; j < MAPA_Y; j++)
            {
                // Jogador
                se (i == jogador_x e j == jogador_y)
                {
                    escreva("☺")
                }
                // Inimigo vivo nessa célula?
                senao {
                    logico tem_inimigo = falso
                    cadeia emoji_aqui = ""
                    para (inteiro k = 0; k < max_inimigos; k++) {
                        se (inimigo_vivo[k] e inimigo_pos_x[k] == i e inimigo_pos_y[k] == j) {
                            tem_inimigo = verdadeiro
                            emoji_aqui = inimigo_emoji[k]
                        }
                    }

                    se (tem_inimigo) {
                        escreva(emoji_aqui)
                    }
                    senao se (mapa[i][j] == "Caminho") {
                        escreva(" ")
                    }
                    senao {
                        escreva("█")
                    }
                }
            }
            escreva(charParede + "\n")
        }

        // Borda inferior
        escreva("╚")
        para (inteiro k = 0; k < MAPA_Y; k++) { escreva(charTeto) }
        escreva("╝\n")
    }

    // ============================================================
    //  SECAO 8: HUD COMPACTO
    // ============================================================

    funcao exibir_hud_mapa()
    {
        inteiro xp_max = calcular_xp_max()
        cadeia bioma = bioma_em(jogador_x)
        cadeia bEmoji = emoji_bioma(jogador_x)

        escreva("┌─────────────────────────────────────────────────────────────────┐\n")
        escreva("  " + bEmoji + " " + bioma)
        escreva("  │  ☺ " + nome_jogador + " [" + classe_jogador + "] NV." + nivel)
        escreva("  │  ❤ " + vida + "/" + vida_max)
        escreva("  │  💧" + mana + "/" + mana_max + "\n")
        escreva("  ⚔ ATK:" + atk + "  🛡 DEF:" + def + "  💨 AGIL:" + agilidade)
        escreva("  │  ✨ XP:" + xp + "/" + xp_max)
        escreva("  │  💰" + ouro + "G")
        escreva("  │  🔮" + status_efeito + "\n")
        escreva("  Pos:[" + jogador_x + "," + jogador_y + "]")
        escreva("  │  👺=Goblin  🐺=Lobo  💀=Esqueleto  👾=Troll  🧙=Necromante\n")
        escreva("└─────────────────────────────────────────────────────────────────┘\n")
    }

    funcao exibir_controles()
    {
        escreva("\n  Movimentação:  W[↑] A[←] S[↓] D[→]")
        escreva("  │  [I] Inventário  │  [C] Acampar  │  [Q] Sair\n")
        escreva("  > ")
    }

    // ============================================================
    //  SECAO 9: MOVIMENTO DO JOGADOR NO MAPA
    // ============================================================

    funcao mover_jogador(inteiro dx, inteiro dy)
    {
        inteiro nx = jogador_x + dx
        inteiro ny = jogador_y + dy

        // Verifica limites
        se (nx < 0 ou nx >= MAPA_X ou ny < 0 ou ny >= MAPA_Y) {
            escreva("[ERRO: Limite do mapa atingido!]\n")
            retorne
        }

        // Verifica se a célula é caminho
        se (mapa[nx][ny] != "Caminho") {
            escreva("[BLOQUEADO: Parede sólida nessa direção!]\n")
            retorne
        }

        // Move o jogador
        jogador_x = nx
        jogador_y = ny

        // Verifica colisão com inimigo
        para (inteiro k = 0; k < max_inimigos; k++) {
            se (inimigo_vivo[k] e inimigo_pos_x[k] == jogador_x e inimigo_pos_y[k] == jogador_y) {
                // Inicia combate!
                preparar_combate(k)
                em_combate = verdadeiro
                retorne
            }
        }

        // Efeito de bioma ao entrar
        verificar_efeito_bioma()
    }

    funcao verificar_efeito_bioma()
    {
        cadeia bioma = bioma_em(jogador_x)

        se (bioma == "Pântano" e status_efeito != "Envenenado") {
            inteiro r = Util.sorteia(1, 100)
            se (r <= 20) {
                status_efeito = "Envenenado"
                vida = vida - 5
                se (vida < 1) { vida = 1 }
                escreva("[BIOMA 🌿 Pântano: Você foi envenenado pelas aguas! -5 HP]\n")
            }
        }

        se (bioma == "Masmorra") {
            inteiro r2 = Util.sorteia(1, 100)
            se (r2 <= 10) {
                inteiro dano_maldicao = Util.sorteia(3, 8)
                vida = vida - dano_maldicao
                se (vida < 1) { vida = 1 }
                escreva("[BIOMA 💀 Masmorra: A magia negra do lugar drena sua força! -" + dano_maldicao + " HP]\n")
            }
        }

        se (status_efeito == "Envenenado") {
            vida = vida - 3
            se (vida < 1) { vida = 1 }
            escreva("[VENENO: -3 HP a cada passo!]\n")
        }
    }

    // ============================================================
    //  SECAO 10: PREPARAR COMBATE
    // ============================================================

    funcao preparar_combate(inteiro idx)
    {
        inteiro dist = jogador_x + jogador_y
        inteiro multi = nivel

        combate_idx = idx

        se (inimigo_tipo[idx] == "Goblin") {
            combate_nome      = "Goblin Selvagem"
            combate_emoji     = "👺"
            combate_vida      = 30 + (dist * 2)
            combate_atk       = 6  + (multi / 2)
            combate_def       = 2
            combate_agilidade = 14
            combate_xp        = 20 + dist
            combate_ouro      = Util.sorteia(5, 15)
        }
        senao se (inimigo_tipo[idx] == "Lobo") {
            combate_nome      = "Lobo das Sombras"
            combate_emoji     = "🐺"
            combate_vida      = 45 + (dist * 3)
            combate_atk       = 9  + multi
            combate_def       = 3
            combate_agilidade = 18
            combate_xp        = 35 + dist
            combate_ouro      = Util.sorteia(2, 8)
        }
        senao se (inimigo_tipo[idx] == "Esqueleto") {
            combate_nome      = "Esqueleto Arqueiro"
            combate_emoji     = "💀"
            combate_vida      = 35 + (dist * 2)
            combate_atk       = 11 + multi
            combate_def       = 1
            combate_agilidade = 10
            combate_xp        = 30 + dist
            combate_ouro      = Util.sorteia(10, 20)
        }
        senao se (inimigo_tipo[idx] == "Troll") {
            combate_nome      = "Troll da Pedra"
            combate_emoji     = "👾"
            combate_vida      = 80 + (dist * 4)
            combate_atk       = 14 + multi
            combate_def       = 8
            combate_agilidade = 5
            combate_xp        = 60 + dist
            combate_ouro      = Util.sorteia(20, 40)
        }
        senao {
            combate_nome      = "Necromante Errante"
            combate_emoji     = "🧙"
            combate_vida      = 55 + (dist * 3)
            combate_atk       = 16 + multi
            combate_def       = 4
            combate_agilidade = 11
            combate_xp        = 50 + dist
            combate_ouro      = Util.sorteia(25, 50)
        }

        escreva("\n╔══════════════════════════════════════════╗\n")
        escreva("  " + combate_emoji + "  ENCONTRO! " + combate_nome + " bloqueia o caminho!\n")
        escreva("  HP: " + combate_vida + "  ATK: " + combate_atk + "  DEF: " + combate_def + "\n")
        escreva("╚══════════════════════════════════════════╝\n")
    }

    // ============================================================
    //  SECAO 11: SISTEMA DE COMBATE
    // ============================================================

    funcao menu_combate()
    {
        // Redesenha mapa com HUD de combate
        desenhar_mapa()
        exibir_hud_mapa()

        escreva("\n══ COMBATE " + combate_emoji + " " + combate_nome + " ══════════════════════════\n")
        escreva("  ❤ Inimigo: " + combate_vida + " HP\n\n")
        escreva("  [1] ⚔  Atacar\n")
        escreva("  [2] 🧪 Usar Poção de Vida\n")
        escreva("  [3] ✨ Habilidade Especial\n")
        escreva("  [4] 💨 Tentar Fugir\n")
        escreva("  [5] 📋 Ver Status Detalhado\n\n")
        escreva("Opção: ")
        leia(opcao)

        se (opcao == 1)       { turno_ataque_jogador() }
        senao se (opcao == 2) { usar_pocao() }
        senao se (opcao == 3) { habilidade_especial() }
        senao se (opcao == 4) { tentar_fuga() }
        senao se (opcao == 5) { exibir_status_detalhado()  retorne }
        senao { escreva("[AVISO: Opção inválida. Turno perdido.]\n") }

        // Turno do inimigo
        se (em_combate e combate_vida > 0) {
            turno_ataque_inimigo()
        }

        se (vida <= 0) { game_over() }
    }

    funcao turno_ataque_jogador()
    {
        inteiro variacao    = Util.sorteia(-3, 7)
        inteiro critico_roll = Util.sorteia(1, 100)
        real mult_critico   = 1.0

        se (critico_roll > 90) {
            mult_critico = 2.0
            escreva("[⚡ CRÍTICO! Dano dobrado!]\n")
        }

        inteiro dano_base  = atk + variacao
        inteiro dano_final
        real calc = (dano_base * mult_critico) - combate_def
        dano_final = Matematica.arredondar(calc, 0)
        dano_final = ((dano_base * mult_critico) - combate_def)
        
        se (dano_final < 1) { dano_final = 1 }

        inteiro roll_esquiva = Util.sorteia(1, 100)
        se (roll_esquiva < combate_agilidade) {
            escreva("💨 " + combate_nome + " desvia do golpe!\n")
        }
        senao {
            combate_vida = combate_vida - dano_final
            escreva("⚔  Seu golpe causa " + dano_final + " de dano ao " + combate_nome + "! (HP restante: " + combate_vida + ")\n")
            se (combate_vida <= 0) { vitoria_combate() }
        }
    }

    funcao turno_ataque_inimigo()
    {
        inteiro roll_esquiva = Util.sorteia(1, 100)
        se (roll_esquiva < agilidade) {
            escreva("💨 Você desvia do ataque do " + combate_nome + "!\n")
            retorne
        }

        inteiro variacao   = Util.sorteia(-3, 7)
        inteiro dano_final = (combate_atk + variacao) - def
        se (dano_final < 1) { dano_final = 1 }

        vida = vida - dano_final
        escreva(combate_emoji + " " + combate_nome + " ataca e causa " + dano_final + " de dano! (Seu HP: " + vida + ")\n")
    }

    funcao habilidade_especial()
    {
        se (classe_jogador == "Guerreiro") {
            se (mana >= 15) {
                mana = mana - 15
                inteiro d = (atk * 2) - combate_def
                se (d < 5) { d = 5 }
                combate_vida = combate_vida - d
                escreva("⚡ GOLPE PESADO! " + d + " de dano devastador!\n")
                se (combate_vida <= 0) { vitoria_combate() }
            }
            senao { escreva("[💧 Mana insuficiente! Necessário: 15 MP]\n") }
        }
        senao se (classe_jogador == "Mago") {
            se (mana >= 25) {
                mana = mana - 25
                inteiro d = atk + Util.sorteia(10, 20)
                combate_vida = combate_vida - d
                escreva("🔥 BOLA DE FOGO! " + d + " de dano mágico!\n")
                se (combate_vida <= 0) { vitoria_combate() }
            }
            senao { escreva("[💧 Mana insuficiente! Necessário: 25 MP]\n") }
        }
        senao se (classe_jogador == "Ladino") {
            se (mana >= 10) {
                mana = mana - 10
                inteiro d = atk + agilidade - combate_def
                se (d < 1) { d = 1 }
                combate_vida = combate_vida - d
                escreva("🗡 GOLPE FURTIVO! " + d + " de dano preciso!\n")
                se (combate_vida <= 0) { vitoria_combate() }
            }
            senao { escreva("[💧 Mana insuficiente! Necessário: 10 MP]\n") }
        }
    }

    funcao tentar_fuga()
    {
        inteiro roll = Util.sorteia(1, 100)
        se (roll < agilidade + 20) {
            escreva("💨 Fuga bem-sucedida! Você recua, perdendo 10 de ouro na pressa.\n")
            ouro = ouro - 10
            se (ouro < 0) { ouro = 0 }
            // Recua um passo
            se (jogador_y > 0 e mapa[jogador_x][jogador_y - 1] == "Caminho") {
                jogador_y = jogador_y - 1
            }
            em_combate = falso
        }
        senao {
            escreva("❌ Fuga falhou! " + combate_nome + " bloqueia o caminho!\n")
            turno_ataque_inimigo()
        }
    }

    funcao vitoria_combate()
    {
        escreva("\n🏆 " + combate_nome + " foi derrotado!\n")
        xp   = xp   + combate_xp
        ouro = ouro + combate_ouro
        escreva("✨ XP: +" + combate_xp + "  💰 Ouro: +" + combate_ouro + "G\n")

        // Cura pós combate
        inteiro cura = Util.sorteia(5, 15)
        vida = vida + cura
        se (vida > vida_max) { vida = vida_max }
        escreva("❤  Regeneração pós-combate: +" + cura + " HP\n")

        // Remove inimigo do mapa
        inimigo_vivo[combate_idx] = falso

        // Chance de drop de item
        inteiro roll_drop = Util.sorteia(1, 100)
        se (roll_drop > 60) {
            adicionar_item("Poção de Vida")
            escreva("🎁 O inimigo deixou uma Poção de Vida!\n")
        }

        em_combate = falso
        verificar_nivel()

        // Verificar chegada na saída
        se (jogador_y >= MAPA_Y - 1) {
            vitoria_jogo()
        }
    }

    // ============================================================
    //  SECAO 12: LOOP PRINCIPAL DE EXPLORAÇÃO NO MAPA
    // ============================================================

    funcao loop_exploracao()
    {
        logico jogando = verdadeiro

        enquanto (jogando e jogo_ativo)
        {
            se (em_combate)
            {
                menu_combate()
                // Pausa para o jogador ler
                escreva("\n[Pressione ENTER para continuar...] ")
                cadeia pausa = ""
                leia(pausa)
            }
            senao
            {
                desenhar_mapa()
                exibir_hud_mapa()
                exibir_controles()

                cadeia entrada = ""
                leia(entrada)

                se (entrada == "w" ou entrada == "W") { mover_jogador(-1, 0) }
                senao se (entrada == "s" ou entrada == "S") { mover_jogador(1, 0) }
                senao se (entrada == "a" ou entrada == "A") { mover_jogador(0, -1) }
                senao se (entrada == "d" ou entrada == "D") { mover_jogador(0, 1) }
                senao se (entrada == "i" ou entrada == "I") { exibir_status_detalhado() }
                senao se (entrada == "c" ou entrada == "C") { acampar() }
                senao se (entrada == "q" ou entrada == "Q") {
                    escreva("Deseja realmente sair? [s/n]: ")
                    cadeia conf = ""
                    leia(conf)
                    se (conf == "s" ou conf == "S") {
                        jogo_ativo = falso
                        jogando    = falso
                    }
                }
                senao {
                    escreva("[AVISO: Comando inválido.]\n")
                }

                // Checa morte por bioma/veneno
                se (vida <= 0) { game_over()  jogando = falso }

                // Checa chegada ao final do mapa
                se (jogador_y >= MAPA_Y - 1 e mapa[jogador_x][jogador_y] == "Caminho") {
                    vitoria_jogo()
                    jogando = falso
                }
            }
        }
    }

    // ============================================================
    //  SECAO 13: SISTEMA DE NIVEL
    // ============================================================

    funcao inteiro calcular_xp_max()
    {
        inteiro base_xp = 100
        inteiro xp_necessario = base_xp
        para (inteiro i = 1; i < nivel; i++) {
            xp_necessario = Tipos.real_para_inteiro(xp_necessario * 1.5)
        }
        retorne xp_necessario
    }

    funcao verificar_nivel()
    {
        inteiro xp_max = calcular_xp_max()
        se (xp >= xp_max) {
            nivel    = nivel + 1
            vida_max = vida_max + 10
            mana_max = mana_max + 5
            atk      = atk + 2
            def      = def + 1
            vida     = vida_max
            mana     = mana_max
            escreva("\n╔══════════════════════╗\n")
            escreva("  ⬆ NÍVEL ACIMA! → " + nivel + "\n")
            escreva("  ❤ HP+10  💧MP+5  ⚔ ATK+2  🛡 DEF+1\n")
            escreva("╚══════════════════════╝\n")
        }
    }

    // ============================================================
    //  SECAO 14: INVENTÁRIO E ITENS
    // ============================================================

    funcao usar_pocao()
    {
        para (inteiro i = 0; i <= 14; i++) {
            se (inventario[i] == "Pocao de Vida") {
                vida = vida + 50
                se (vida > vida_max) { vida = vida_max }
                inventario[i] = "Vazio"
                escreva("🧪 Você bebeu uma Poção de Vida! +50 HP (HP atual: " + vida + ")\n")
                retorne
            }
        }
        escreva("[🧪 Sem Poção de Vida no inventário!]\n")
    }

    funcao adicionar_item(cadeia item)
    {
        para (inteiro i = 0; i <= 14; i++) {
            se (inventario[i] == "Vazio") {
                inventario[i] = item
                escreva("[🎒 " + item + " adicionado ao inventário (slot " + i + ")]\n")
                retorne
            }
        }
        escreva("[❌ Inventário cheio! Descarte um item.]\n")
    }

    funcao exibir_status_detalhado()
    {
        escreva("\n══ 📋 STATUS DETALHADO ═══════════════════════════\n")
        escreva("  Nome      : " + nome_jogador + "\n")
        escreva("  Classe    : " + classe_jogador + "\n")
        escreva("  Nível     : " + nivel + "\n")
        escreva("  HP        : " + vida + " / " + vida_max + "\n")
        escreva("  MP        : " + mana + " / " + mana_max + "\n")
        escreva("  ATK       : " + atk + "\n")
        escreva("  DEF       : " + def + "\n")
        escreva("  Agilidade : " + agilidade + "\n")
        escreva("  XP        : " + xp + " / " + calcular_xp_max() + "\n")
        escreva("  Ouro      : " + ouro + "G\n")
        escreva("  Status    : " + status_efeito + "\n")
        escreva("  Posição   : [" + jogador_x + ", " + jogador_y + "]\n")
        escreva("  Bioma     : " + emoji_bioma(jogador_x) + " " + bioma_em(jogador_x) + "\n")
        escreva("──────────────────────────────────────────────────\n")
        escreva("  🗡 [Mão Dir]  " + equipamento[0] + "\n")
        escreva("  🗡 [Mão Esq]  " + equipamento[1] + "\n")
        escreva("  🛡 [Armadura] " + equipamento[2] + "\n")
        escreva("──────────────────────────────────────────────────\n")
        escreva("  🎒 INVENTÁRIO:\n")
        para (inteiro i = 0; i <= 14; i++) {
            se (inventario[i] != "Vazio") {
                escreva("    [" + i + "] " + inventario[i] + "\n")
            }
        }
        escreva("══════════════════════════════════════════════════\n")
        escreva("[Pressione ENTER para voltar...] ")
        cadeia pausa = ""
        leia(pausa)
    }

    // ============================================================
    //  SECAO 15: ACAMPAR
    // ============================================================

    funcao acampar()
    {
        escreva("🏕 Você acampa e descansa...\n")
        inteiro cura_hp = vida_max / 5
        inteiro cura_mp = mana_max / 5
        vida = vida + cura_hp
        mana = mana + cura_mp
        se (vida > vida_max) { vida = vida_max }
        se (mana > mana_max) { mana = mana_max }
        escreva("❤  +" + cura_hp + " HP  💧 +" + cura_mp + " MP restaurados.\n")

        se (status_efeito == "Envenenado") {
            inteiro r = Util.sorteia(1, 100)
            se (r > 50) {
                status_efeito = "Normal"
                escreva("✅ O descanso curou o veneno!\n")
            }
            senao {
                escreva("⚠ O veneno persiste...\n")
            }
        }

        escreva("[Pressione ENTER para continuar...] ")
        cadeia pausa = ""
        leia(pausa)
    }

    // ============================================================
    //  SECAO 16: FIM DE JOGO
    // ============================================================

    funcao game_over()
    {
        escreva("\n╔══════════════════════════════════╗\n")
        escreva("          💀  GAME OVER  💀         \n")
        escreva("  " + nome_jogador + " caiu em batalha.\n")
        escreva("  Nível atingido : " + nivel + "\n")
        escreva("  XP acumulado   : " + xp + "\n")
        escreva("  Ouro obtido    : " + ouro + "G\n")
        escreva("  Posição final  : [" + jogador_x + ", " + jogador_y + "]\n")
        escreva("╚══════════════════════════════════╝\n")
        jogo_ativo = falso
    }

    funcao vitoria_jogo()
    {
        escreva("\n╔══════════════════════════════════════════╗\n")
        escreva("  🏆🏆  VOCÊ VENCEU!  🏆🏆               \n")
        escreva("  " + nome_jogador + " cruzou o mundo sombrio!\n")
        escreva("  Nível atingido : " + nivel + "\n")
        escreva("  XP total       : " + xp + "\n")
        escreva("  Ouro coletado  : " + ouro + "G\n")
        escreva("╚══════════════════════════════════════════╝\n")
        jogo_ativo = falso
    }

    // ============================================================
    //  SECAO 17: CRIAÇÃO DE PERSONAGEM
    // ============================================================

    funcao criar_personagem()
    {
        escreva("═══════════════════════════════════════════════\n")
        escreva("         CRIAÇÃO DE PERSONAGEM\n")
        escreva("═══════════════════════════════════════════════\n\n")
        escreva("Viajante, diga-me seu nome: ")
        leia(nome_jogador)
        escreva("\nBem-vindo, " + nome_jogador + "!\n")
        escreva("Escolha sua classe:\n\n")
        escreva("  [1] ⚔  GUERREIRO  | HP:+5  ATK:+3  AGIL:-2 | O bruto das batalhas.\n")
        escreva("  [2] 🔥 MAGO       | HP:-3  MANA:+5 ATK:+4  | Mestre dos arcanos.\n")
        escreva("  [3] 🗡  LADINO     | HP:+0  ATK:+1  AGIL:+6 | Sombra que corta.\n\n")
        escreva("Opção: ")
        leia(opcao)

        nivel      = 1
        xp         = 0
        ouro       = 50
        peso_atual = 0
        status_efeito = "Normal"

        para (inteiro i = 0; i <= 14; i++) { inventario[i] = "Vazio" }
        inventario[0] = "Pocao de Vida"
        inventario[1] = "Pocao de Vida"
        inventario[2] = "Pao Dormido"
        equipamento[0] = "Vazio"
        equipamento[1] = "Vazio"
        equipamento[2] = "Vazio"

        se (opcao == 1) {
            classe_jogador = "Guerreiro"
            vida_max = 105   mana_max = 30
            atk = 13         def = 8     agilidade = 8
            equipamento[0] = "Espada Enferrujada"
            equipamento[2] = "Armadura de Couro"
        }
        senao se (opcao == 2) {
            classe_jogador = "Mago"
            vida_max = 67    mana_max = 80
            atk = 18         def = 4     agilidade = 12
            equipamento[0] = "Cajado de Aprendiz"
            inventario[3]  = "Pergaminho de Fogo"
        }
        senao se (opcao == 3) {
            classe_jogador = "Ladino"
            vida_max = 80    mana_max = 40
            atk = 11         def = 5     agilidade = 16
            equipamento[0] = "Adaga Cega"
            equipamento[1] = "Adaga Cega"
        }
        senao {
            escreva("[AVISO: Classe Guerreiro atribuída por padrão.]\n")
            classe_jogador = "Guerreiro"
            vida_max = 105   mana_max = 30
            atk = 13         def = 8     agilidade = 8
        }

        vida = vida_max
        mana = mana_max

        escreva("\n✅ Personagem criado com sucesso!\n")
        escreva("Você desperta na entrada de um mundo sombrio.\n")
        escreva("O mapa à sua frente foi gerado pelo destino...\n\n")

        personagem_criado = verdadeiro
    }

    // ============================================================
    //  SECAO 18: TITULO
    // ============================================================

    funcao exibir_titulo()
    {
        escreva("╔══════════════════════════════════════════════╗\n")
        escreva("   ██╗  ██╗██╗   ██╗██████╗ ███████╗██████╗   \n")
        escreva("   ██║  ██║╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗  \n")
        escreva("   ███████║ ╚████╔╝ ██████╔╝█████╗  ██████╔╝  \n")
        escreva("   ██╔══██║  ╚██╔╝  ██╔═══╝ ██╔══╝  ██╔══██╗  \n")
        escreva("   ██║  ██║   ██║   ██║     ███████╗██║  ██║  \n")
        escreva("   ╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚══════╝╚═╝  ╚═╝  \n")
        escreva("        PORTUGOL RPG ENGINE  v3.0             \n")
        escreva("        🗺 MAPA PROCEDURAL + EXPLORAÇÃO VISUAL  \n")
        escreva("╚══════════════════════════════════════════════╝\n\n")
        escreva("[SISTEMA: Inicializando gerador de mapa procedural...]\n")
        escreva("[SISTEMA: Alocando mapa[10][50]... OK]\n")
        escreva("[SISTEMA: Alocando inimigos[12]... OK]\n\n")
    }

    // ============================================================
    //  SECAO 19: FUNCAO PRINCIPAL
    // ============================================================

    funcao inicio()
    {
        jogo_ativo        = verdadeiro
        personagem_criado = falso
        em_combate        = falso

        exibir_titulo()
        criar_personagem()

        escreva("\n[🗺 Gerando mapa procedural... aguarde]\n")
        gerar_mapa()
        popular_inimigos()

        escreva("[✅ Mapa gerado em " + tentativas_mapa + " tentativas! ")
        escreva(max_inimigos, " inimigos espalhados pelo caminho.]\n")
        escreva("\nLegenda: ☺=Você  █=Parede  espaço=Caminho  👺🐺💀👾🧙=Inimigos\n")
        escreva("Objetivo: chegue ao lado direito do mapa sobrevivendo!\n\n")
        escreva("[Pressione ENTER para começar...] ")
        cadeia pausa = ""
        leia(pausa)

        loop_exploracao()

        escreva("\n[SISTEMA: Encerrando execução...]\n")
        escreva("Obrigado por jogar Hyper-Portugol RPG v3.0!\n")
    }
}
