# Para entender o Pipe Operator, vamos desconstruir esse exemplo. Uma função aninhada a outra. Caso a gente precise passar mais outra função como argumento, a legibilidade será comprometida.
IO.puts String.length "Olá"

# Para melhorar a legibilidade, a primeira coisa que podemos fazer é separá-la em dois passos:
str_len = String.length "Olá"
IO.puts(str_len)

# Podemos melhorar ainda mais utilizando o Pipe Operator. Eu pego o resultado a esqueda e passo como parâmetro na função a direita do pipe.
String.length "Olá" |> IO.puts

# O Pipe Operator permite que o resultado da expressão anterior seja o valor para o primeiro parâmetro da expressão seguinte. Nesse caso podemos desconstruir ainda mais:
"Olá!" |> String.length |> IO.puts

# Podemos organizar de uma forma melhor agora
"Olá!"
|> String.lenght
|> IO.puts
