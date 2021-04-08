# First Class Functions ou First Class Citizens. A ideia por trás desse conceito é que em uma linguagem funcional uma função deve ser como qualquer outro valor, ou seja, no Elixir funcções são valores do tipo function. Function é um tipo.
taxa_basica = fn preco -> 5 end
taxa_promocional = fn preco -> preco * 0.12 end
preco_total = fn preco, f_taxa -> preco + f_taxa.(preco) end

preco_total.(1000, taxa_basica)
preco_total.(1000, taxa_promocional)
