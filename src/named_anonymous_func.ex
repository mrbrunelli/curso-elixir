# Funções Nomeadas x Funções Anônimas. Até agora usamos funções nomeadas que basicamente são funções que possuem nomes. As funções anônimas são funções definidas sem um nome atrelado, mas que podem ser atribuídas (bind) a uma variável.
sum = fn a, b -> a + b end

# Para acessar a fn é necessário passar dessa forma:
sum.(10, 5)

# Pra múltiplas instruções no corpo da função podemos usar o ponto e vírgula ou múltiplas linhas
sum = fn a, b -> total = a + b; IO.puts "Total #{total}" end

printed_sum = fn a, b ->
  total = a + b
  IO.puts "O total é: #{total}"
end

# Podemos criar funções anônimas sem parâmetros
one_plus_one = fn -> 1 + 1 end
