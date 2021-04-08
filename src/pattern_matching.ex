# A primeira coisa que precisamos aprender sobre Pattern Matching é que o = não é um operador de atribuição no Elixir.
n1 = 1
1 = n1
2 = n1 # no match of right hand side value: 1. Não casa com o lado direito da mão, que no caso é n1.

# No Elixir o operador = verifica se n1 pode apontar para 1. O valor 1 casa com a variável n1? Se sim, então n1 irá apontar para 1. Se o matching for válido, ele retorna o valor da expressão.
n1 = 1

# O Match Operator = é um operador binário, ou seja, ele precisa ter dois elementros para serem avaliados (um de cada lado).
x = y # Left Hand, Math Operator, Right Hand

# As variáveis não armazenam valores, elas armazenam endereço de memória.
n1 = 1
n2 = n1 # Agora n2 passará a apontar para o endereço que n1 aponta, que no caso é 1.

# A variável deve ficar do lado esquerdo para poder ser realizada uma atribuição.
variavel = "sou um texto"

# Iremos utilizar o Pattern Matching para transformar estruturas complexas (listas, tuplas etc) em estruturas simples, como uma variável com um valor.
{a, b, c} = {:matheus, "brunelli", 500}
a # :matheus
b # "brunelli"
c # 500

# O Elixir verifica se as estruturas podem ser correspondidas e em caso positivo faz as atribuições. Caso as estruturas não sejam equivalentes, retornará erro.
{a, b, c} = {:matheus, "brunelli", 500}
{a, b, c} = {:matheus, "brunelli"} # retorna erro

# Outra coisa que podemos usar com Pattern Matching é a estrutura de cabeça e cauda para listas. Fazemos isso com o uso do Pipe.
[cabeca | cauda] = [1, 2, 3]
cabeca # 1
cauda # [2, 3]
