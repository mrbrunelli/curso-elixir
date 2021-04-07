# Em programação funcional todos os valores criados são imutáveis. A ideia por trás da imutabilidade é simplificar o trabalho de paralelismo.
list = [1, 2, 3, 4]
List.delete_at list, -1
list ++ [1]
IO.inspect list
# Nesse exemplo acima o valor da lista é imutável, independente da operação que a gente aplique nela, sempre será gerado um novo valor.

# Para entender, vamos imaginar a seguinte situação. Total recebe 958, e ao passar como argumento em uma função que faz alguma operação, total continuará valendo 958, pois o a função não pode mudar um valor fora de seu escopo.
total = 958
operacao_qualquer total
IO.puts total # -> 958

# Agora em outro exemplo, o valor de total muda, pois estamos atribuindo diretamente outro valor a ele. Isso acontece pois o Elixir trabalha com binding de variáveis, ou seja, a variável total aponta para uma referência que contém o valor atribuído. No caso estamos pedindo para total apontar para outro espaço da memória que contém o valor 365.
total = 857
total = 365
IO.puts total # -> 365

# O melhor de tudo isso é que o rebinding só ocorre quando o contexto for correto. Vamos ver como o total se comporta em dois tipos de contexto diferentes.
total = 876

defmodule Mutante do
  def mutar valor do
    valor = 1
    IO.puts "Interno #{valor}" # Aqui será exibido 1 ou 876?
    valor
  end
end

Mutante.mutar total
IO.puts "Externo A - #{total}" # 1 ou 876?

total = Mutante.mutar total # total apontará para o retorno de Mutante.mutar total
IO.puts "Externo B - #{total}" # 1 ou 876?

# Ser imutável não quer dizer que o valor nunca mudará, mas sim que ele está protegido de mudanças externas. Esse é um princípio da programação funcional, mas que pode ser implementado ou forçado em outras linguagens.

# Princípios importantes da PF: First Class Functions, Pure Functions, Immutable Variables, Recursion, Nonstric Evaluation, Statements, Pattern Matching.
