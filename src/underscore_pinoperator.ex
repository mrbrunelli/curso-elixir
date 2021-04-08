# Se eu não quiser o valor de y? Serei obrigado a informar uma variável mesmo assim? Nesse caso eu posso utilizar o underscore _
{x, y} = {32, 25}

# Ficará assim
{x, _} = {32, 25}

# Agora o Pin Operator. Se x possui um valor e eu não quero permitir que ele sofra rebinding? O uso do pin operator é justamente para impedir reassociação de variáveis.
x = 40
x = 55
y = 100
^y = 200 # no match of right hand side value: 200
{x, ^y} = {12, 67} # Não deixará ser atribuído para y. Só deixaria casar a expressão caso o valor na tupla fosse 100, que foi o primeiro atribuído para y.
