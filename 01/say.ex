# say.ex (ex -> deve ser compilado para a BEAM). elixirc say.ex criará um bytecode.
# Recompilar o módulo -> r Say
# Inspecionar, verificar tipo -> i "hello"
defmodule Say do
  def hello do
    "Olá Mundo!"
  end
end

# Tudo no Elixir é expressão.
# Expressão != Instrução.
# Toda expressão possuí retorno.
