# String são delimitadas em aspas duplas e são codificadas por padrão em UTF-8
IO.puts "Elixir é \n muito \n legal!"

# Strings são representadas em binários, que são sequências de bytes
is_binary "Elixir é bacanudo"

# Para saber o número de bytes ocupados pela String
byte_size "Matheus Brunelli"

# Interpolação de strings
mensagem = "é muito legal."
IO.puts "Elixir #{mensagem}"

# Concatenação
IO.puts "Olá" <> "Mundo!"

# Verificar quantidade de caracteres
String.length "meus amigos e meus companheiros"

# Verificar codepoint do caractere. Codepoint são caracteres Unicode que podem ser representados por um ou mais bytes.
?a
?\n
?y

# Verificar representação binária e uma String, basta concatenar com <<0>>
"Meu nome é Matheus" <> <<0>> # -> retornará os bytes

# O Elixir representa as strings como uma sequência de bytes ao invés de um array de caracteres.
# Caso seja necessário trabalhar com arrays de caracteres, podemos usar as Charlists.
# Aspas simples são charlists. Aspas duplas são strings.
'Elixir é legal!' # -> retornará os Codepoints
"Elixir é legal!"
to_charlist "Elixir é legal!"
