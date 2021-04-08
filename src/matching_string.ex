# Podemos usar <> para concatenar strings
"matheus" <> "brunelli" # resultado: "matheus brunelli"

# No entanto podemos usá-lo também para fazer matching de Strings, ou seja, separar uma parte da String que case com um valor que identificamos.
"Authentication: " <> credentials = "Authentication: Basic dXNlcjpwYXNz"

# No exemplo acima, casamos a palavra "Authentication: " com o restante da String e ganhamos na variável credentials o valor restante da String testada. Ou seja, essa é uma ótima técnica para separar uma substring.

# Irá comparar as duas strings, e o que for diferente, o que sobrar, ele irá adicionar na variável content_type. A sobra da comparação irá para a variável.
"Content-Type: " <> content_type = "Content-Type: text/html; charset=UTF=8"
