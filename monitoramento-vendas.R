# 1. Criar um vetor com as vendas diárias de 10 vendedores
vendas <- c(18, 25, 12, 30, 22, 17, 5, 21, 19, 15)

# 2. Verificar quais vendedores atingiram a meta mínima de 20 vendas
meta <- 20
atingiram_meta <- vendas >= meta

# 3. Calcular quantos vendedores atingiram a meta
num_atingiram_meta <- sum(atingiram_meta)

# 4. Substituir qualquer valor de vendas inferior a 15 por 15
vendas[vendas < 15] <- 15

# 5. Gerar um “relatório” de desempenho
relatorio <- vector("character", length(vendas))
for (i in 1:length(vendas)) {
  if (atingiram_meta[i]) {
    relatorio[i] <- paste("Vendedor", i, ": Atingiu a meta com", vendas[i], "vendas.")
  } else {
    relatorio[i] <- paste("Vendedor", i, ": Não atingiu a meta com", vendas[i], "vendas.")
  }
}
# Exibir o relatório
for (linha in relatorio) {
  print(linha)
}
# Exibir o número de vendedores que atingiram a meta
cat("Número de vendedores que atingiram a meta:", num_atingiram_meta, "\n")
