# Tuplas são delimitadas por chaves e elas podem conter tipos direfentes
{43, :yes, "hello", 67.32, true}

# As tuplas são armazenadas continuamente na memória, diferente das listas. Ela sempre pega o endereço de memória que está a frente. [] -> [] -> [] -> []. As tuplas estão mais próximas do array.

# Assim como arrays em outras linguagens, podemos ecessar um elemento específico em uma tupla.
elem {"matheus", "ricardo", "brunelli", 30, true, :yes}, 2)

# Inserir um elemento no lugar de outro
put_elem {"matheus", "ricardo"}, 1, "brunelli"

# Verificar tamanho da tupla
tuple_size {"abacaxi", "abacate", "limão", "uva"}
