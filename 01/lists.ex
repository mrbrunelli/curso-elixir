# As listas são delimitadas por colchetes e elas podem conter tipo diferentes
[43, :yes, "hello", 67.5, true]

# Listas podem ser concatenadas com ++ ou subtraídas com --
[43, :yes, "hello"] ++ [67.32, true]
[43, :yes, "hello"] -- ["hello", true]

# Listas não são array. Listas não possuem index.Listas no Elixir são Listas Encadeadas em sua essência, sendo assim os elementos são indexados e não podemos acessar um elemento diretamente como em um array/vetor. A Lista encadeada parte do princípio de que podemos ligar/encadear células de memória.

["matheus", "ricardo", "brunelli"]
# Aqui ele está armazenando cada palavra em um espaço separado da memória e liga um no outro. No caso do array, ele armazenaria tudo no mesmo espaço.

# Listas possuem cabeça (head) e cauda (tail).
# head -> "matheus"
# tail -> ["ricardo", "brunelli"]
hd ["matheus", "ricardo", "brunelli"]
tl ["matheus", "ricardo", "brunelli"]
