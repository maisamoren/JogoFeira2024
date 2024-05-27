-- defines the options that can be selected in the game

OPTIONS = {}

table.insert(
    OPTIONS, 
    {
        name = "Alan Turing",
        path = "images/alan_turing.jpg",
        texts = {
            "Pai da Ciência da Computação.",
            "Fez um trabalho essencial contra os nazistas.",
            "Sofreu perseguição por ser homossexual."
        }
    }
)

table.insert(
    OPTIONS,
    {
        name = "Ada Lovelace",
        path = "images/ada_lovelace.jpg",
        texts = {
            "Primeira programadora da história.",
            "Fez o primeiro algoritmo para a máquina de Babbage.",
            "Filha do poeta Lord Byron."
        }
    }
)

table.insert(
    OPTIONS,
    {
        name = "Margaret Hamilton",
        path = "images/margaret_hamilton.jpg",
        texts = {
            "Escreveu o código de bordo do Apollo 11.",
            "Cientista da computação formada em matemática.",
            "Levava sua filha para o trabalho ocasionalmente."
        }
    }
)

table.insert(
    OPTIONS,
    {
        name = "Charles Babbage",
        path = "images/charles_baggage.jpg",
        texts = {
            "Desenvolveu a máquina analítica, o primeiro computador.",
            "Trabalhou junto de Ada Lovelace.",
            "Cientista, matemático, engenheiro e inventor."
        }
    }
)

table.insert(
    OPTIONS,
    {
        name = "Mary Kenneth Keller",
        path = "images/mary_kenneth_keller.jpg",
        texts = {
            "Primeira PhD em Ciência da Computação.",
            "Feira nascida nos Estados Unidos.",
            "Militante pelos direitos das mulheres."
        }
    }
)

table.insert(
    OPTIONS,
    {
        name = "Grace Hopper",
        path = "images/grace_hopper.jpg",
        texts = {
            "Almirante da Marinha dos EUA.",
            "Criou a linguagem COBOL.",
            "Phd em matemática pela Universidade de Yale."
        }
    }
)

table.insert(
    OPTIONS,
    {
        name = "John Carmack",
        path = "images/margaret_hamilton.jpg",
        texts = {
            "Criador do jogo Doom.",
            "Grande defensor do software livre.",
            "Co-fundador da id Software."
        }
    }
)

table.insert(
    OPTIONS,
    {
        name = "George Boole",
        path = "images/margaret_hamilton.jpg",
        texts = {
            "Matemático e filósofo inglês.",
            "Criador da álgebra booleana.",
            "Influenciou a lógica e a computação."
        }
    }
)
-- stores size of table
n_options = 0
for _ in pairs(OPTIONS) do n_options = n_options + 1 end

-- getting all texts in only one
for key, option in pairs(OPTIONS) do
    OPTIONS[key].total_text = ""
    for _, text in pairs(option.texts) do
        OPTIONS[key].total_text = OPTIONS[key].total_text .. "- " .. text .. "\n\n"
    end
end
