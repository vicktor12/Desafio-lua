-- Habilita UTF-8 no terminal
os.execute("chcp 65001")

-- Criatura
local monsterName = "Squid"
local description = "Uma lula terrestre que solta uma tinta ao ser atacada"
local emoji = "🧨"
local sound = "Ssssnack"
local favoriteTime = "Noturno"
local item = "Tinta"

-- Atributos
local attackAttribute = 10
local defenseAttribute = 3
local lifeAttribute = 5
local speedAttribute = 7
local inteligenceAttribute = 2

local function getProgressBarAttack(atck)
    local attacking = "🏹"
    local stoped = "⬛"
    local attackProgressBar = ""
    for i = 1, 10, 1 do
        if i <= atck then
            attackProgressBar = attackProgressBar .. attacking
        else
            attackProgressBar = attackProgressBar .. stoped
        end
    end
    return attackProgressBar
end

local function getProgressBarDefense(def)
    local defensing = "🛡️"
    local stoped = "⬛"
    local defenseProgressBar = ""
    for i = 1, 10, 1 do
        if i <= def then
            defenseProgressBar = defenseProgressBar .. defensing
        else
            defenseProgressBar = defenseProgressBar .. stoped
        end
    end
    return defenseProgressBar
end

local function getProgressBarLife(life)
    local fullLife = "❤️"
    local emptyLife = "🖤"
    local lifeProgressBar = ""
    for i = 1, 10, 1 do
        if i <= life then
            lifeProgressBar = lifeProgressBar .. fullLife
        else
            lifeProgressBar = lifeProgressBar .. emptyLife
        end
    end
    return lifeProgressBar
end

local function getProgressBarSpeed(spd)
    local runing = "🏃‍♂️"
    local stoped = "⬛"
    local speedProgressBar = ""
    for i = 1, 10, 1 do
        if i <= spd then
            speedProgressBar = speedProgressBar .. runing
        else
            speedProgressBar = speedProgressBar .. stoped
        end
    end
    return speedProgressBar
end

local function getProgressBarInteligence(int)
    local thinking = "🧠"
    local bored = "⬛"
    local inteligenceProgressBar = ""
    for i = 1, 10, 1 do
        if i <= int then
            inteligenceProgressBar = inteligenceProgressBar .. thinking
        else
            inteligenceProgressBar = inteligenceProgressBar .. bored
        end
    end
    return inteligenceProgressBar
end


-- Cartão da Criatura
print("===========================================")
print("/ ")
print("/ Nome: " .. monsterName)
print("/ Descrição: " .. description)
print("/ ")
print("/ Emoji Favorito: " .. emoji)
print("/ Som: " .. sound)
print("/ Período: " .. favoriteTime)
print("/ Drop: " .. item)
print("/ ")
print("/ Atributos:")
print("/    Ataque:       " .. getProgressBarAttack(attackAttribute))
print("/    Defesa:       " .. getProgressBarDefense(defenseAttribute))
print("/    Vida:         " .. getProgressBarLife(lifeAttribute))
print("/    Velocidade:   " .. getProgressBarSpeed(speedAttribute))
print("/    Inteligência: " .. getProgressBarInteligence(inteligenceAttribute))
print("/ ")
print("===========================================")