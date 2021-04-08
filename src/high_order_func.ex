# Higher Order Functions é uma função que pode receber uma função como argumento ou retornar uma função. As higher order functions são um contraste com as order functions que são funções que não podem receber funções como argumento ou retornar funções.
defmodule Salario do
  def calculo_do_bonus porcentagem do
    fn salario -> salario * porcentagem end
  end
end

bonus_para_gerente = Salario.calculo_do_bonus 1.05
# Ou
Salario.calculo_do_bonus(1.05).(2500)

# Em resumo, quando uma linguagem suporta First Class Functions, ela trata as funções como valores, e esses podem ser atribuídos a uma variável.
# Higher Order Functions são funções que trabalham com outras funções, podendo também recebê-las ou retorná-las.
