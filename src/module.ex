# O nome do módulo deve ser em CamelCase. O nome da função deve ser snake_case.
defmodule UserMessages do
  def get_message do
    "Olá mundo!"
  end
end

# Podemos criar namespaces para facilitar e evitar confusões em nossas aplicações. Para isso, podemos usar um ponto para separar os namespaces em nossos módulos.
defmodule User.UserMessages do
  def get_message do
    "Hello World!"
  end
end

# Compilar um arquivo .ex pelo modo iterativo: c "src/module.ex"
