# O operador de captura (capture operator &) pode ser usado para basicamente duas coisas
sum = fn a, b -> a + b end

# Com Capture Operator ficaria assim:
sum = & &1 + &2

# Retornar uma função
to_upcase = fn string -> String.upcase string

# Com Capture Operator ficaria assim. Nesse caso foi é necessário informar a Aridade da Função String.upcase, que é 1.
to_upcase = &String.upcase/1
