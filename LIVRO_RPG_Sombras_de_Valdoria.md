# SOMBRAS DE VALDORIA
## RPG de Texto Profissional - Manual do Jogador v1.0

---

# SUMARIO

1. [Introducao](#1-introducao)
2. [Como Jogar - Tutorial Completo](#2-como-jogar---tutorial-completo)
3. [Sistema de Classes](#3-sistema-de-classes)
4. [Habilidades por Classe](#4-habilidades-por-classe)
5. [Sistema de Combate](#5-sistema-de-combate)
6. [Sistema Elemental](#6-sistema-elemental)
7. [Sistema de Buffs e Debuffs](#7-sistema-de-buffs-e-debuffs)
8. [Sistema de Inventario](#8-sistema-de-inventario)
9. [Sistema de Sobrevivencia](#9-sistema-de-sobrevivencia)
10. [Loja e Economia](#10-loja-e-economia)
11. [Exploracao e Mapa](#11-exploracao-e-mapa)
12. [Sistema de Quests](#12-sistema-de-quests)
13. [Eventos Aleatorios](#13-eventos-aleatorios)
14. [Save System](#14-save-system)
15. [Dicas e Estrategias](#15-dicas-e-estrategias)
16. [Tabelas de Referencia](#16-tabelas-de-referencia)
17. [Curiosidades](#17-curiosidades)

---

# 1. INTRODUCAO

## Bem-vindo a Sombras de Valdoria!

**Sombras de Valdoria** e um RPG de texto profissional desenvolvido inteiramente em Portugol Studio. Neste jogo, voce explorara masmorras geradas proceduralmente, combatera monstros terriveis, coletara itens poderosos e se tornara cada vez mais forte.

### Caracteristicas do Jogo:

- **8 Classes Unicas** com identidades distintas
- **40 Habilidades** (5 por classe) com balanceamento estrategico
- **Sistema Elemental** com fraquezas e resistencias
- **Barra de Stagger** para controle de combate
- **Sistema de Buffs/Debuffs** com duracao por turnos
- **Inventario com Peso e Slots** para decisoes estrategicas
- **Ciclo Dia/Noite** que afeta gameplay
- **Sistema de Fome** para sobrevivencia
- **Loja e Ferreiro** com economia dinamica
- **Mapas Gerados Aleatoriamente** com exploracao por menu
- **Quests e Eventos Aleatorios** para imersao
- **Save System** via codigo anotavel

### Filosofias de Design:

O jogo segue 5 pilares fundamentais:
1. **Progressao Constante** - Sempre se sinta mais forte
2. **Decisoes Estrategicas** - Cada escolha importa
3. **Risco vs Recompensa** - recompensas proporcionais aos riscos
4. **Especializacao de Builds** - cada classe e unica
5. **Escalabilidade Previsivel** - sem power creep

---

# 2. COMO JOGAR - TUTORIAL COMPLETO

## Iniciando o Jogo

Ao iniciar o jogo, voce vera a tela principal:

```
=== SOMBRAS DE VALDORIA ===
v1.0

[1] Novo Jogo
[2] Carregar Jogo
```

### Passo 1: Criar Personagem

1. **Digite seu nome** - Escolha um nome para seu heroi
2. **Escolha sua classe** - 8 classes disponiveis, cada uma com habilidades unicas
3. **Receba itens iniciais** - Pocoes e comida para comecar sua jornada

### Passo 2: Tutorial de Combate

O primeiro combate e um tutorial que ensina:
- **[1] Atacar** - Ataque basico com sua arma
- **[2] Habilidades** - Use habilidades especiais da sua classe
- **[3] Itens** - Use pocoes e consumiveis
- **[4] Fugir** - Tente escapar do combate

### Passo 3: Exploracao

Apos o tutorial, voce entra no modo de exploracao:

```
================================
  SOMBRAS DE VALDORIA
================================
Jogador: [Nome]
Classe: Guerreiro | Nivel: 1
HP: 175/175 | MP: 90/90
Ouro: 50g | Fome: 100
Tempo: Dia
Regiao: Floresta Sombria
================================
```

### Controles de Exploracao:

| Tecla | Acao |
|-------|------|
| W | Mover para cima |
| S | Mover para baixo |
| A | Mover para esquerda |
| D | Mover para direita |
| 0 | Voltar ao menu |

### Simbolos do Mapa:

| Simbolo | Significado |
|---------|-------------|
| @ | Seu personagem |
| E | Inimigo |
| B | Bau |
| L | Loja |
| S | Saida (proximo mapa) |
| T | Arvore (recursos) |
| (espaço) | Caminho livre |
| . | Terreno intransitavel |

### Menu Principal:

| Opcao | Funcao |
|-------|--------|
| [1] Explorar | Navegar pelo mapa |
| [2] Inventario | Gerenciar itens |
| [3] Status | Ver atributos |
| [4] Quests | Ver missoes |
| [5] Loja | Comprar itens |
| [6] Salvar | Gerar save code |
| [7] Sair | Sair do jogo |

---

# 3. SISTEMA DE CLASSES

Cada classe tem uma identidade unica e 5 habilidades que sao desbloqueadas conforme o nivel sobe (uma por nivel, do 1 ao 5).

## Guerreiro (Dificuldade: Facil)
**Funcao:** Pressao fisica + Resistencia

| Atributo | Valor |
|----------|-------|
| Forca | 8 |
| Defesa | 7 |
| Inteligencia | 3 |
| Agilidade | 4 |
| Vitalidade | 6 |

**Arma Inicial:** Espada Longa (15 dano)

**Estilo de Jogo:** O Guerreiro e a classe mais direta. Causa dano fisico pesado e resiste a muito dano. Ideal para iniciantes.

---

## Mago (Dificuldade: Media)
**Funcao:** Burst magico + Controle

| Atributo | Valor |
|----------|-------|
| Forca | 3 |
| Defesa | 4 |
| Inteligencia | 9 |
| Agilidade | 4 |
| Vitalidade | 5 |

**Arma Inicial:** Cajado Arcano (10 dano)

**Estilo de Jogo:** O Mago causa dano magico massivo e controla o campo de batalha com debuffs. Fragil mas poderoso.

---

## Ladino (Dificuldade: Alta)
**Funcao:** Critico + Evasao

| Atributo | Valor |
|----------|-------|
| Forca | 5 |
| Defesa | 4 |
| Inteligencia | 4 |
| Agilidade | 9 |
| Vitalidade | 4 |

**Arma Inicial:** Adaga Dupla (12 dano)

**Estilo de Jogo:** O Ladino depende de criticos e esquiva. Alto risco, alta recompensa. Requer gerenciamento cuidadoso.

---

## Paladino (Dificuldade: Facil)
**Funcao:** Sustain + Protecao

| Atributo | Valor |
|----------|-------|
| Forca | 6 |
| Defesa | 7 |
| Inteligencia | 5 |
| Agilidade | 3 |
| Vitalidade | 7 |

**Arma Inicial:** Martelo Sagrado (12 dano)

**Estilo de Jogo:** O Paladino se cura e se protege. Excelente sobrevivencia, mas dano moderado.

---

## Arqueiro (Dificuldade: Media)
**Funcao:** Precisão + Controle

| Atributo | Valor |
|----------|-------|
| Forca | 5 |
| Defesa | 4 |
| Inteligencia | 4 |
| Agilidade | 8 |
| Vitalidade | 4 |

**Arma Inicial:** Arco Curto (13 dano)

**Estilo de Jogo:** O Arqueiro ataca com precisao e controle. Dano consistente e habilidades de stun.

---

## Druida (Dificuldade: Media)
**Funcao:** Regeneracao + Transformacao

| Atributo | Valor |
|----------|-------|
| Forca | 5 |
| Defesa | 6 |
| Inteligencia | 6 |
| Agilidade | 4 |
| Vitalidade | 7 |

**Arma Inicial:** Cajado Natural (10 dano)

**Estilo de Jogo:** O Druida se regenera e se transforma em urso. Sustentacao a longo prazo.

---

## Necromante (Dificuldade: Alta)
**Funcao:** Drenagem + Debuffs

| Atributo | Valor |
|----------|-------|
| Forca | 4 |
| Defesa | 4 |
| Inteligencia | 8 |
| Agilidade | 4 |
| Vitalidade | 5 |

**Arma Inicial:** Cajado Sombrio (10 dano)

**Estilo de Jogo:** O Necromante drena vida e mana dos inimigos. Poderoso mas fragil.

---

## Monge (Dificuldade: Muito Alta)
**Funcao:** Combos + Ritmo

| Atributo | Valor |
|----------|-------|
| Forca | 7 |
| Defesa | 5 |
| Inteligencia | 4 |
| Agilidade | 7 |
| Vitalidade | 5 |

**Arma Inicial:** Luvas de Combate (11 dano)

**Estilo de Jogo:** O Monge usa combos e turnos extras. Requer timing perfeito e gerenciamento de recursos.

---

# 4. HABILIDADES POR CLASSE

## GUERREIRO

### 1. Golpe Pesado (Nivel 1)
- **Custo:** 10 MP | **Cooldown:** 1 turno
- **Dano:** 150% | **Stagger:** +20%
- **Precisao:** 95%
- **Descricao:** Um golpe devastador. Burst inicial confiavel.

### 2. Postura Defensiva (Nivel 2)
- **Custo:** 18 MP | **Cooldown:** 5 turnos
- **Efeito:** -40% dano recebido por 3 turnos
- **Penalidade:** -15% dano causado durante postura
- **Descricao:** Tank temporario. Nao use com buffs de ataque.

### 3. Grito de Guerra (Nivel 3)
- **Custo:** 20 MP | **Cooldown:** 5 turnos
- **Efeito:** +25% dano por 4 turnos
- **Descricao:** Buff progressivo. Nao acumula consigo mesmo.

### 4. Redemoinho (Nivel 4)
- **Custo:** 28 MP | **Cooldown:** 4 turnos
- **Dano:** 180% | **Stagger:** -50%
- **Contra Bosses:** Stagger reduzido para 25%
- **Descricao:** Controle de stagger. Excelente para grupos.

### 5. Execucao (Nivel 5)
- **Custo:** 40 MP | **Cooldown:** 7 turnos
- **Dano:** 110% (alvo >30% HP) / 300% (alvo <30% HP)
- **Limite:** Maximo 35% da vida maxima do boss
- **Descricao:** Finalizacao devastadora. Use no momento certo!

---

## MAGO

### 1. Dardo Mistico (Nivel 1)
- **Custo:** 12 MP | **Cooldown:** 1 turno
- **Dano:** 130% magico | **Ignorar Defesa:** 20%
- **Descricao:** Ataque magico basico. Ignora parte da defesa.

### 2. Escudo Arcano (Nivel 2)
- **Custo:** 20 MP | **Cooldown:** 5 turnos
- **Escudo:** 50 + INT*2 | **Duracao:** 4 turnos
- **Nota:** Escudos iguais renovam, nao acumulam
- **Descricao:** Barreira protetora. Absorve dano antes do HP.

### 3. Nevasca (Nivel 3)
- **Custo:** 30 MP | **Cooldown:** 6 turnos
- **Efeito:** -30% precisao inimigo por 5 turnos
- **Contra Bosses:** Reducao cai para 15%
- **Descricao:** Controle de campo. Muda ambiente para Nevasca.

### 4. Tempestade (Nivel 4)
- **Custo:** 40 MP | **Cooldown:** 5 turnos
- **Dano:** 200% magico | **Elemento:** Raio
- **Chance:** 20% aplicar Choque
- **Descricao:** Burst elemental. Pode eletrificar o inimigo.

### 5. Dreno de Mana (Nivel 5)
- **Custo:** 25 MP | **Cooldown:** 3 turnos
- **Dano:** 140% | **Recuperacao:** 50% do custo em mana
- **Nota:** Nao pode gerar mana infinita
- **Descricao:** Drena mana do inimigo. Sustentacao magica.

---

## LADINO

### 1. Punhalada (Nivel 1)
- **Custo:** 8 MP | **Cooldown:** 1 turno
- **Dano:** 80% | **Critico:** 50% chance | **Mult:** 2x
- **Dano Medio Real:** 120%
- **Descricao:** Ataque rapido com alta chance critico.

### 2. Esquiva (Nivel 2)
- **Custo:** 16 MP | **Cooldown:** 5 turnos
- **Efeito:** +40% evasao por 2 turnos
- **Descricao:** Evite ataques inimigos temporariamente.

### 3. Bomba de Fumaca (Nivel 3)
- **Custo:** 24 MP | **Cooldown:** 6 turnos
- **Efeito:** Invisibilidade por 1 turno
- **Nota:** Habilidades em area ainda atingem
- **Descricao:** Desapareca nas sombras. Proximo ataque e critico.

### 4. Veneno (Nivel 4)
- **Custo:** 22 MP | **Cooldown:** 4 turnos
- **Dano:** 4% HP atual/turno (normal), 2% (elite), 1% (boss)
- **Duracao:** 5 turnos
- **Descricao:** Dano continuo. Muito forte contra inimigos comuns.

### 5. Assalto (Nivel 5)
- **Custo:** 35 MP | **Cooldown:** 6 turnos
- **Dano:** 140% | **Cura:** 15% do dano | **Ouro:** 8-15% extra
- **Descricao:** Ataque que cura e da ouro. Versatil.

---

## PALADINO

### 1. Golpe de Luz (Nivel 1)
- **Custo:** 12 MP | **Cooldown:** 1 turno
- **Dano:** 120% | **Vs Trevas:** 2.5x
- **Descricao:** Ataque sagrado. Devastador contra trevas.

### 2. Cura Sagrada (Nivel 2)
- **Custo:** 30 MP | **Cooldown:** 5 turnos
- **Cura:** 30% HP maxima
- **Nota:** Nao usar 2 turnos seguidos
- **Descricao:** Cura poderosa. Use com sabedoria.

### 3. Aura de Protecao (Nivel 3)
- **Custo:** 25 MP | **Cooldown:** 1 uso por combate
- **Efeito:** +20 Defesa permanente
- **Nota:** Nao acumula
- **Descricao:** Buff defensivo permanente.

### 4. Julgamento (Nivel 4)
- **Custo:** 28 MP | **Cooldown:** 4 turnos
- **Dano:** 130% | **Debuff:** -50% ataque inimigo por 1 turno
- **Descricao:** Ataque que enfraquece o inimigo.

### 5. Ressurreicao (Nivel 5)
- **Custo:** 100% MP atual | **Cooldown:** 999
- **Efeito:** Revive com 100% HP, remove debuffs
- **Uso:** 1 por combate
- **Descricao:** Skill mais perigosa do jogo. Salva-vidas.

---

## ARQUEIRO

### 1. Tiro Rapido (Nivel 1)
- **Custo:** 10 MP | **Cooldown:** 1 turno
- **Dano:** 2 hits de 60% = 120% total
- **Descricao:** Dois tiros rapidos. Dano consistente.

### 2. Olho de Aguia (Nivel 2)
- **Custo:** 20 MP | **Cooldown:** 4 turnos
- **Efeito:** 100% critico no proximo ataque
- **Duracao:** Proximo ataque
- **Descricao:** Garante critico. Combine com habilidades fortes.

### 3. Armadilha (Nivel 3)
- **Custo:** 24 MP | **Cooldown:** 5 turnos
- **Efeito:** Stun por 1 turno
- **Bosses:** 50% chance apenas
- **Descricao:** Atordoa o inimigo. Pula turno dele.

### 4. Chuva de Flechas (Nivel 4)
- **Custo:** 35 MP | **Cooldown:** 5 turnos
- **Dano:** 190% | **Ignora Esquiva:** Sim
- **Descricao:** Ataque em area. Nao pode ser esquivado.

### 5. Flecha Vampirica (Nivel 5)
- **Custo:** 40 MP | **Cooldown:** 6 turnos
- **Dano:** 150% | **Roubo Vida:** 100%
- **Boss:** Cura reduzida 50%
- **Descricao:** Drena vida do inimigo. Sustentacao.

---

## DRUIDA

### 1. Chicote de Cipo (Nivel 1)
- **Custo:** 12 MP | **Cooldown:** 2 turnos
- **Dano:** 110% | **Debuff:** -10% defesa inimigo por 3 turnos
- **Descricao:** Ataque que reduz defesa. Sinergico.

### 2. Pele de Arvore (Nivel 2)
- **Custo:** 22 MP | **Cooldown:** 5 turnos
- **Efeito:** 20% reflexao de dano por 4 turnos
- **Nota:** Reflexao nao pode critar
- **Descricao:** Reflete dano de volta ao inimigo.

### 3. Crescimento Exuberante (Nivel 3)
- **Custo:** 30 MP | **Cooldown:** 6 turnos
- **Efeito:** 6% HP/turno (50% bonus em floresta)
- **Duracao:** 5 turnos
- **Descricao:** Regeneracao poderosa. Melhor em florestas.

### 4. Forma de Urso (Nivel 4)
- **Custo:** 35 MP | **Cooldown:** 7 turnos
- **Efeito:** +35% HP max, +60% Defesa, -20% Velocidade
- **Duracao:** 4 turnos
- **Descricao:** Transformacao poderosa. Tank temporario.

### 5. Forca da Natureza (Nivel 5)
- **Custo:** 45 MP | **Cooldown:** 7 turnos
- **Dano:** 250% | **Impedir Fuga:** Sim
- **Descricao:** Ultimate devastador. Impede fuga do inimigo.

---

## NECROMANTE

### 1. Toque Sombrio (Nivel 1)
- **Custo:** 10 MP | **Cooldown:** 2 turnos
- **Dano:** 90% | **Debuff:** -15% dano do alvo por 3 turnos
- **Descricao:** Ataque que enfraquece o inimigo.

### 2. Erguer Esqueleto (Nivel 2)
- **Custo:** 25 MP | **Cooldown:** 6 turnos
- **Efeito:** Invocacao por 4 turnos (35% INT dano/turno)
- **Nota:** Invocacao temporaria, nao permanente
- **Descricao:** Invoca esqueleto aliado.

### 3. Maldicao (Nivel 3)
- **Custo:** 30 MP | **Cooldown:** 7 turnos
- **Efeito:** +50% dano recebido pelo alvo por 3 turnos
- **Bosses:** 25% apenas
- **Descricao:** Amplifica dano no inimigo.

### 4. Sacrificio (Nivel 4)
- **Custo:** 15 MP + 20% HP atual | **Cooldown:** 4 turnos
- **Dano:** 3x o valor do HP sacrificado
- **Seguranca:** Nunca mata o jogador
- **Descricao:** Sacrifica vida por dano massivo.

### 5. Colheita de Almas (Nivel 5)
- **Custo:** 45 MP | **Cooldown:** 8 turnos
- **Condicao:** Matar o alvo
- **Efeito:** 100% mana + 50% HP recuperados
- **Descricao:** Recompensa por finalizar inimigos.

---

## MONGE

### 1. Palma de Ferro (Nivel 1)
- **Custo:** 10 MP | **Cooldown:** 1 turno
- **Dano:** 120% | **Ignora Armadura:** 100%
- **Descricao:** Ataque que ignora defesa. Consistente.

### 2. Meditacao (Nivel 2)
- **Custo:** 0 MP | **Cooldown:** 4 turnos
- **Efeito:** +20% HP + 20% Mana
- **Custo:** Perde o turno
- **Descricao:** Recupera recursos. Perde acao.

### 3. Chute Relampago (Nivel 3)
- **Custo:** 30 MP | **Cooldown:** 6 turnos
- **Dano:** 90% | **Turno Extra:** Sim
- **Nota:** Maximo 1 turno extra por rodada
- **Descricao:** Ataque com turno extra. Combo!

### 4. Desviar Projeteis (Nivel 4)
- **Custo:** 20 MP | **Cooldown:** 5 turnos
- **Efeito:** Bloqueia proximo ataque
- **Duracao:** 1 turno
- **Descricao:** Bloqueio total. Use contra ataques fortes.

### 5. Golpe do Ponto Vital (Nivel 5)
- **Custo:** 45 MP | **Cooldown:** 8 turnos
- **Dano:** 180% | **Resistencia:** 0 | **Stagger:** Instantaneo
- **Bosses:** Nao aplica stun completo, apenas 70% stagger
- **Descricao:** Ataque devastador. Ignora tudo.

---

# 5. SISTEMA DE COMBATE

## Fluxo de Combate

O combate e por turnos. Cada turno segue esta ordem:

1. **Turno do Jogador** - Escolha uma acao
2. **Turno do Inimigo** - IA do inimigo age
3. **Processamento de Efeitos** - Buffs/debuffs sao processados
4. **Atualizacao de Cooldowns** - Habilidades recuperam uso

## Acoes do Jogador

### [1] Atacar
- Ataque basico com arma equipada
- Usa atributos de Forca e Precisao
- Reduz durabilidade da arma em 1
- Sem custo de mana, sem cooldown

### [2] Habilidades
- Abre sub-menu com habilidades desbloqueadas
- Cada habilidade tem custo de mana e cooldown
- Habilidades desbloqueadas = nivel atual (max 5)

### [3] Itens
- Abre inventario de itens utilizaveis
- Use pocoes, comida e consumiveis
- Nao gasta turno de combate

### [4] Fugir
- Chance baseada em Agilidade
- Inimigos comuns: 50% + AGI
- Bosses: 20% fixo

## Barra de Stagger

Cada inimigo tem uma barra de Stagger (Atordoamento):

- **Stagger Maximo:** 25% do HP maximo do inimigo
- **Aplicar Stagger:** Habilidades e ataques reduzem a barra
- **Quando chega a 0:** Inimigo pula o turno e recebe dano critico
- **Recuperacao:** +10% por turno

### Dica de Stagger:
Contra bosses, o stagger e reduzido para 25% do valor normal. Planeje seus ataques de stagger cuidadosamente!

## Durabilidade da Arma

- Cada ataque: -1 durabilidade
- Ataque critico: -2 durabilidade
- Habilidade pesada: -3 durabilidade
- **Durabilidade 0:** Dano cai 90%!
- **Reparo:** Custa (durabilidade perdida * 0.5) em ouro

## Tipos de Inimigos

| Tipo | HP | ATQ | DEF | XP | Loot |
|------|-----|-----|-----|-----|------|
| Comum | 1.0x | 1.0x | 1.0x | 1.0x | 1.0x |
| Elite | 2.2x | 1.5x | 1.4x | 2.5x | +35% |
| Boss | 5.0x | 2.2x | 1.8x | 5.0x | +100% |

## Formula de HP dos Inimigos

```
HP = 50 + (nivel * 22) + (nivel^2 * 2)
```

| Nivel | HP Comum | HP Elite | HP Boss |
|-------|----------|----------|---------|
| 1 | 74 | 163 | 370 |
| 5 | 210 | 462 | 1050 |
| 10 | 470 | 1034 | 2350 |
| 20 | 1290 | 2838 | 6450 |
| 50 | 6150 | 13530 | 30750 |

---

# 6. SISTEMA ELEMENTAL

## Tabela de Fraquezas

| Elemento | Forte Contra | Fraco Contra |
|----------|--------------|--------------|
| Fogo | Gelo | Terra |
| Gelo | Terra | Fogo |
| Terra | Fogo | Gelo |
| Luz | Trevas | Trevas |
| Trevas | Luz | Luz |
| Raio | - | - |

## Multiplicadores

| Situacao | Multiplicador |
|----------|---------------|
| Fraqueza | 2.0x dano |
| Resistencia | 0.5x dano |
| Neutro | 1.0x dano |

## Dica Elemental

Sempre explore fraquezas elementais! Um ataque elemental fraco pode ser tao eficaz quanto um ataque forte neutro.

---

# 7. SISTEMA DE BUFFS E DEBUFFS

## Buffs (Efeitos Positivos)

### Regeneracao
- **Tipo:** Cura Continua
- **Mecanica:** Recupera % do HP maximo por turno
- **Interacoes:** Floresta +50%, Queimadura -50%

### Escudo
- **Tipo:** Barreira Protetora
- **Mecanica:** Absorve dano antes do HP
- **Nota:** Escudos iguais renovam, nao acumulam

### Furia
- **Tipo:** Amplificador de Ataque
- **Mecanica:** +40% dano fisico, -20% defesa
- **Interacoes:** Vida <30% aumenta efeito

### Velocidade
- **Tipo:** Manipulacao de Turnos
- **Mecanica:** +25 AGI, +15% esquiva
- **Nota:** Maximo 1 turno extra por rodada

### Invisibilidade
- **Tipo:** Ocultacao
- **Mecanica:** 100% evasao por 1 turno
- **Nota:** Quebra ao atacar. Primeiro golpe = critico.

### Resistencia Elemental
- **Tipo:** Resistencia Defensiva
- **Mecanica:** -50% dano de elemento especifico

### Vampirismo
- **Tipo:** Roubo de Vida
- **Mecanica:** 20-35% do dano retorna como HP

## Debuffs (Efeitos Negativos)

### Queimadura
- **Dano:** 3-5% HP maximo por turno
- **Duracao:** 3-5 turnos
- **Interacao:** Reduz regeneracao pela metade

### Veneno
- **Dano:** 4% HP atual por turno
- **Duracao:** 5 turnos
- **Nota:** Bosses recebem apenas 1%

### Sangramento
- **Dano:** 6% HP atual por turno
- **Duracao:** 3 turnos

### Congelamento
- **Efeito:** -40% velocidade
- **Duracao:** 3 turnos

### Maldicao
- **Efeito:** +50% dano recebido
- **Duracao:** 3 turnos
- **Bosses:** Apenas 25%

## Limites de Buffs

| Tipo | Maximo |
|------|--------|
| Buffs simultaneos | 10 |
| Debuffs iguais acumulados | 3 |
| Duracao maxima | 999 turnos |

## Exibicao na HUD

```
BUFFS:
[Furia: 2T]
[Escudo: 50]
[Regeneracao: 3T]

DEBUFFS:
[Veneno: 4T]
[Queimadura: 2T]
```

---

# 8. SISTEMA DE INVENTARIO

## Estrutura do Inventario

| Propriedade | Valor |
|-------------|-------|
| Slots Maximos | 30 |
| Peso Maximo | 30 + (Forca * 1.5) |

## Estados de Peso

| Estado | Peso | Penalidade |
|--------|------|------------|
| Leve | 0-50% | Nenhuma |
| Medio | 51-80% | -10% velocidade |
| Pesado | 81-99% | -25% velocidade, -15% esquiva |
| Sobrecarregado | 100%+ | -50% velocidade, sem esquiva, sem fuga |

## Categorias de Itens

1. **Consumiveis** - Pocoes, comida, elixires, bombas
2. **Equipamentos** - Armas, armaduras, acessorios
3. **Materiais** - Couro, ferro, ossos, cristais
4. **Itens de Quest** - Chaves, reliquias, artefatos
5. **Itens Especiais** - Runas, gemas, fragmentos

## Raridades

| Raridade | Cor | Chance | Venda |
|----------|-----|--------|-------|
| Comum | Branco | 60% | 30% |
| Incomum | Verde | 25% | 40% |
| Raro | Azul | 10% | 50% |
| Epico | Roxo | 4% | 60% |
| Lendario | Laranja | 0.9% | 70% |
| Mitico | Vermelho | 0.1% | 80% |

## Empilhamento

- Consumiveis e materiais empilham (max 10 por pilha)
- Equipamentos e itens unicos nao empilham
- Itens empilhados ocupam 1 slot

## Ordenacao e Filtros

O inventario pode ser ordenado por:
- Nome, Peso, Raridade, Categoria, Valor, Tipo

Filtros disponiveis:
- Consumiveis, Equipamentos, Materiais, Quests, Raros/Lendarios

---

# 9. SISTEMA DE SOBREVIVENCIA

## Ciclo Dia/Noite

- **Mudanca:** A cada 5 acoes
- **Dia:** Normal
- **Noite:** Inimigos +30% dano, +50% XP

### Impacto no Gameplay

| Aspecto | Dia | Noite |
|---------|-----|-------|
| Dano Inimigo | Normal | +30% |
| XP Ganho | Normal | +50% |
| Preco Pocoes | Normal | +25% |
| Preco Trevas | Normal | -20% |
| Mercador Negro | Indisponivel | Disponivel |

## Sistema de Fome

| Valor | Estado | Efeito |
|-------|--------|--------|
| 100-51 | Normal | Sem penalidades |
| 50-26 | Faminto | -5% atributos |
| 25-11 | Muito Faminto | -15% atributos |
| 10-1 | Critico | -35% atributos |
| 0 | Exausto | -50% atributos |

### Consumo de Fome

| Acao | Fome |
|------|------|
| Combate | -4 |
| Exploracao | -2 |
| Dormir | +20 |
| Pao Velho | +15 |
| Racao de Viagem | +60 |

---

# 10. LOJA E ECONOMIA

## Consumiveis

| Item | Preco | Efeito | Nivel |
|------|-------|--------|-------|
| Pao Velho | 10g | +15 Fome | 1 |
| Racao de Viagem | 35g | +60 Fome | 1 |
| Pocao de Vida P | 25g | +30 HP | 1 |
| Pocao de Mana P | 25g | +30 MP | 1 |
| Elixir de Adrenalina | 50g | +20 Stamina | 1 |
| Pocao de Vida M | 60g | +80 HP | 3 |
| Pocao de Mana M | 60g | +80 MP | 3 |

## Itens Especiais

| Item | Preco | Efeito | Nivel |
|------|-------|--------|-------|
| Pedra de Amolar | 80g | Repara arma 100% | 2 |
| Bomba de Luz | 120g | Stun 1 turno | 3 |
| Amuleto da Sorte | 300g | +30% drop ouro | 4 |
| Coracao de Fenix | 750g | Revive 20% HP | 5 |

## Mercador Negro (Apenas Noite)

| Item | Preco | Efeito | Nivel |
|------|-------|--------|-------|
| Sangue de Demonio | 150g | +50% ATK, -5 HP/turno | 3 |
| Capa de Invisibilidade | 400g | Fuga 100% | 4 |
| Peraminho Proibido | 1000g | Reseta cooldowns | 5 |

## Ferreiro - Refino de Arma

| Nivel | Custo | Bonus |
|-------|-------|-------|
| +1 | 100g | +10% Dano |
| +2 | 250g | +25% Dano |
| +3 | 500g | +40% Dano + Bonus Elemental |
| +4 | 1000g | +60% Dano |
| +5 | 2500g | Dobra dano + Inquebravel |

## Sistema de Reputacao

- A cada 500g gastos: +5% desconto permanente
- Desconto maximo: 20%
- Acumulativo ate o limite

## Inflacao Noturna

- Consumiveis: +25% mais caros a noite
- Itens de Trevas: -20% mais baratos a noite

---

# 11. EXPLORACAO E MAPA

## Geracao de Mapa

Os mapas sao gerados proceduralmente com:

- Caminhos aleatorios
- Inimigos distribuidos
- Baus com loot
- Lojas e ferreiros
- Saidas para proximo mapa
- Arvores com recursos

## Simbolos do Mapa

| Simbolo | Significado |
|---------|-------------|
| @ | Jogador |
| E | Inimigo |
| B | Bau |
| L | Loja |
| S | Saida |
| T | Arvore |
| (espaco) | Caminho |
| . | Bloqueado |

## Interacoes no Mapa

| Encontro | Resultado |
|----------|-----------|
| Inimigo (E) | Combate |
| Bau (B) | Loot aleatorio |
| Loja (L) | Abre loja |
| Saida (S) | Proximo mapa |
| Arvore (T) | Chance de recursos |
| Caminho vazio | Chance de evento |

## Chances de Encontro

| Evento | Chance |
|--------|--------|
| Combate | 45% |
| Loot | 20% |
| NPC/Mercador | 10% |
| Armadilha | 10% |
| Quest | 10% |
| Raro | 5% |

---

# 12. SISTEMA DE QUESTS

## Tipos de Quests

1. **Caca** - Derrote X inimigos
2. **Coleta** - Colete X itens
3. **Exploracao** - Visite X areas

## Recompensas

| Nivel | XP | Ouro |
|-------|-----|------|
| 1 | 40 | 25 |
| 2 | 80 | 50 |
| 3 | 120 | 75 |
| 4 | 160 | 100 |
| 5 | 200 | 125 |

## Quests Iniciais

### Primeiros Passos
- **Objetivo:** Derrote 3 inimigos
- **Recompensa:** 50 XP, 30g

### Cacador de Goblins
- **Objetivo:** Derrote 5 goblins
- **Recompensa:** 100 XP, 60g

---

# 13. EVENTOS ALEATORIOS

## Tipos de Eventos

| Evento | Descricao | Chance |
|--------|-----------|--------|
| Emboscada | Combate surpresa | 45% |
| Bau Encontrado | Loot gratis | 20% |
| Mercador Ambulante | Loja temporaria | 10% |
| Armadilha | Dano automatico | 10% |
| Missao | Nova quest | 10% |
| Fonte Misteriosa | Cura completa | 5% |

---

# 14. SAVE SYSTEM

## Como Salvar

1. Acesse [6] Salvar no menu principal
2. Anote o codigo gerado
3. Ao iniciar o jogo, use [2] Carregar Jogo
4. Digite o codigo anotado

## Formato do Save Code

O save code contem:
- Nome do jogador
- Classe
- Nivel
- XP
- Ouro
- Atributos
- Nivel de refino da arma
- Durabilidade
- Fome

## Quando o Jogo Salva Automaticamente

- Ao subir de nivel
- Ao sair do jogo (manual)

---

# 15. DICAS E ESTRATEGIAS

## Dicas para Iniciantes

1. **Sempre leve comida** - A fome e real e perigosa
2. **Repare sua arma** - Arma quebrada = 90% menos dano
3. **Explore fraquezas elementais** - 2x dano faz diferenca
4. **Use buffs com timing** - Nao desperdice cooldowns
5. **Gerencie seu inventario** - Peso excessivo e perigoso

## Estrategias por Classe

### Guerreiro
- Use Postura Defensiva antes de receber dano pesado
- Grito de Guerra + Golpe Pesado = combo forte
- Execucao apenas quando inimigo <30% HP

### Mago
- Escudo Arcano antes de combates longos
- Nevasca reduz precisao do inimigo
- Tempestade + Choque = dano extra

### Ladino
- Punhalada + Olho de Aguia = critico garantido 2x
- Esquiva antes de ataques fortes
- Veneno e forte contra inimigos comuns

### Paladino
- Aura de Protecao no inicio do combate
- Cura Sagrada quando HP <50%
- Julgamento para enfraquecer bosses

### Arqueiro
- Olho de Aguia + Chuva de Flechas = burst
- Armadilha para pular turno do inimigo
- Flecha Vampirica para sustain

### Druida
- Crescimento Exuberante em florestas = +50%
- Forma de Urso para tankar bosses
- Chicote de Cipo reduz defesa antes de ataques

### Necromante
- Toque Sombrio + Maldicao = dano amplificado
- Sacrificio quando HP alto = dano massivo
- Colheita de Almas para recuperar recursos

### Monge
- Meditacao para recuperar recursos
- Chute Relampago para combos
- Desviar Projeteis contra ataques fortes

## Dicas de Economia

1. **Compre Pocoes P no nivel 1** - Sao mais eficientes
2. **Economize para refino +3** - Bonus elemental vale a pena
3. **Venda itens comuns** - 30% do valor e melhor que nada
4. **Aumente reputacao** - 20% de desconto e significativo

## Dicas de Combate

1. **Stagger antes de habilidades fortes** - Dano critico garantido
2. **Buff antes de atacar** - Furia + ataque = dano amplificado
3. **Fuja se HP critico** - Melhor viver para lutar outro dia
4. **Use itens no momento certo** - Pocoes durante combate salvam

---

# 16. TABELAS DE REFERENCIA

## Progressao de XP

| Nivel | XP Necessario | HP Base | Mana Base |
|-------|---------------|---------|-----------|
| 1 | 100 | 175 | 90 |
| 2 | 145 | 199 | 108 |
| 3 | 210 | 226 | 126 |
| 4 | 305 | 256 | 144 |
| 5 | 442 | 289 | 162 |
| 10 | 2810 | 475 | 270 |
| 20 | 7700 | 775 | 450 |
| 50 | 28900 | 1475 | 810 |

## Limites Globais

| Sistema | Limite |
|---------|--------|
| Reducao de Dano | 80% |
| Critico | 80% |
| Esquiva | 75% |
| Roubo de Vida | 50% |
| Regeneracao | 15% HP/turno |
| Turno Extra | 1 por rodada |
| Stun | Maximo 2 turnos |
| Debuff Amplificador | +50% |

## Escala de Poder de Habilidades

| Tipo | Multiplicador | Cooldown |
|------|---------------|----------|
| Basica | 100-140% | 1 |
| Media | 150-200% | 2-3 |
| Forte | 220-280% | 4-5 |
| Ultimate | 300%+ | 6-8 |

## Durabilidade

| Acao | Perda |
|------|-------|
| Ataque basico | -1 |
| Ataque critico | -2 |
| Habilidade pesada | -3 |

---

# 17. CURIOSIDADES

## Fatos sobre o Jogo

1. **Desenvolvido em Portugol Studio** - Todo o codigo e em Portugol, uma linguagem de programacao educacional brasileira.

2. **40 Habilidades Unicas** - Cada classe tem 5 habilidades com identidades distintas.

3. **Balanceamento Profissional** - O jogo segue formulas matematicas precisas para evitar power creep.

4. **Mapas Infinitos** - Cada mapa e gerado proceduralmente, nunca jogando o mesmo mapa duas vezes.

5. **Economia Controlada** - O jogo usa formulas de inflacao e reputacao para manter a economia balanceada.

6. **IA dos Inimigos** - Inimigos usam estrategias como curar quando HP baixo e explorar fraquezas.

7. **Sistema de Stagger** - Inspirado em jogos como Dark Souls, o stagger permite controle de combate.

8. **8 Classes com Identidade** - Cada classe tem um estilo de jogo unico e habilidades que definem sua identidade.

## Segredos

- **Mercador Negro:** Aparece apenas a noite com itens proibidos
- **Fonte Misteriosa:** 5% de chance em eventos - cura completa!
- **Coracao de Fenix:** Item mais raro do jogo - revive ao morrer
- **Refino +5:** Torna a arma inquebravel e dobra o dano

## Estatisticas do Jogo

- **Total de Linhas de Codigo:** ~3000+
- **Bibliotecas Usadas:** Util, Matematica, Tipos
- **Classes:** 8
- **Habilidades:** 40
- **Tipos de Inimigos:** 10+
- **Raridades de Itens:** 6
- **Elementos:** 6

---

# CREDITOS

**Sombras de Valdoria**
RPG de Texto Profissional
Desenvolvido em Portugol Studio

Versao 1.0

---

*"A melhor habilidade nao e a mais forte, mas a que cria decisoes, muda combates, possui timing, custo e risco. Isso e balanceamento profissional."*

---

*Fim do Manual*