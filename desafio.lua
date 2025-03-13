--[[Criaremos aqui a ficha de um Demogorgon, monstro do D&D.

Monstro: Demogorgon

Descrição: O Demogorgon é um príncipe demônio criado por O Vazio. É um demônio-mor, criado para liderar os exércitos do Vazio, sendo respeitado, mas muito mais temido no Multiverso. Ele tem duas cabeças, cada uma com sua própria personalidade distinta. A cabeça esquerda é conhecida como Aionios, e é considerada a cabeça mais inteligente do Demogorgon. A cabeça direita é conhecida como Hethradiah, e é considerada a cabeça mais violenta. As duas cabeças estão em constante conflito umas com as outras, mas juntas são uma força formidável a ser enfrentada.

Características:
    Tipo e Tamanho: Demônio, Enorme
    Alinhamento: Chaotic Evil
    
Atributos:
    Força   29
    Destreza    14
    Constituição    26
    Inteligência    20
    Sabedoria   17
    Carisma     25

Habilidades: 

    Multi-ataque. Demogorgon faz dois ataques Tentacle. Ele pode substituir um ataque por um uso do Gaze.

    Tentáculo. Ataque de Arma Corpo a Corpo: +17 para acertar, chegar a 10 pés, um alvo. Bater: 28 (3d12 + 9) dano de força. Se o alvo é uma criatura, ele deve ter sucesso em um lançamento de salvação da Constituição DC 23, ou seu ponto de vida máximo é reduzido em uma quantidade igual ao dano recebido. Essa redução dura até que o alvo termine um longo descanso. O alvo morre se o seu ponto de vida máximo for reduzido para 0.

    Olhar. Demogorgon vira seu olhar mágico em direção a uma criatura que ele pode ver a menos de 120 pés dele. O alvo deve ter sucesso em um DC 23 Sabedoria salvando lançamento ou sofrer um dos seguintes efeitos (escolha um ou rolar um d6):

    1-2: Olhar Interessante. O alvo fica atordoado até o início do próximo turno de Demogorgon ou até que Demogorgon não esteja mais dentro da linha de visão.

    3-4: Confundindo Labirinto. O alvo sofre o efeito do confusão feitiço sem fazer um lance de poupança. O efeito dura até o início do próximo turno de Demogorgon. O Demogorgon não precisa de se concentrar no feitiço.

    5-6: Labirinto Hipnótico. O alvo é encantado por Demogorgon até o início do próximo turno de Demogorgon. Demogorgon escolhe como o alvo encantado usa sua ação, reação e movimento.

    Spellcasting. Demogorgon lança um dos seguintes feitiços, não exigindo componentes materiais e usando Carisma como a habilidade de conjuração (feitiço salvo DC 23):

Ações Lendárias:

Demogorgon pode tomar 2 ações lendárias, escolhendo entre as opções abaixo. Apenas uma opção de ação lendária pode ser usada de cada vez e apenas no final do turno de outra criatura. Demogorgon recupera ações lendárias no início de sua vez.

    Olhar. Demogorgon usa Caze e deve usar Beguiling Gaze ou Confusing Gaze.

    Cauda. Ataque de Arma Corpo a Corpo: +17 para acertar, chegar a 15 pés, um alvo. Bater: 20 (2d10 + 9) dano de bludgeoning mais 11 (2d10) dano necrótico.

    Lançar um Feitiço (Custos 2 Ações). Demogorgon usa Spellcasting.

==========================================================================================================================
]]-- 
os.execute("chcp 65001")

local monsterName = "Demogorgon"
local descrption = "O Demogorgon é um príncipe demônio criado por O Vazio. É um demônio-mor, criado para liderar os exércitos do Vazio, sendo respeitado, mas muito mais temido no Multiverso. Ele tem duas cabeças, cada uma com sua própria personalidade distinta. A cabeça esquerda é conhecida como Aionios, e é considerada a cabeça mais inteligente do Demogorgon. A cabeça direita é conhecida como Hethradiah, e é considerada a cabeça mais violenta. As duas cabeças estão em constante conflito umas com as outras, mas juntas são uma força formidável a ser enfrentada."

local atributoStr = 29
local atributoDex = 14
local atributoCon = 26
local atributoInt = 20
local atributoWis = 17
local atributoCha = 25

local danger = 10
local friendly = 1

local function progressBar(attribute)
    local fullSquare = "🟥"
    local emptySquate = "⬛"
    
    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then 
            --Quadrado cheio --
            result = result .. fullSquare
        else
            result = result .. emptySquate
            --quadrado vazio--
        end
        
    end

    local result = ""
    for x = 1, 20, 1 do
        if x <= attribute then
            result = result .. fullSquare
        else
            result = result .. emptySquate
        end

    end
        
    return result
end

function progressBarlong(attribute)
    
end


print("======================================================================================")
print("|  " .. monsterName)
print("|  " .. descrption)
print("|  ")
print("|  Atributos:")
print("|    —Força: " .. atributoStr .. " " .. progressBar(atributoStr))
print("|    —Destreza: " .. atributoDex .. "" .. progressBar(atributoDex)) 
print("|    —Constituição: " ..atributoCon .. "" .. progressBar(atributoCon))
print("|    —Inteligência: " .. atributoInt .. "" .. progressBar(atributoInt))
print("|    —Sabedoria :" ..atributoWis .. "" .. progressBar(atributoWis))
print("|    —Carisma: " .. atributoCha .. "" .. progressBar(atributoCha))
print("|  ")
print("|  Medições do Espécime:")
print("|    Grau de ameaça:", progressBar(danger))
print("|    Grau de amizade:", progressBar(friendly))
print("|  ")
print("|  ")
print("======================================================================================")
