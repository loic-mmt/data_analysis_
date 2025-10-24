#exercice 19
#1)
data <- data.frame(BEPC = c(15, 10, 15, 40), BAC = c(12, 18, 5, 35),
                   Licence = c(3, 4, 8, 15), Total = c(30, 32, 28, 90))

rownames(data) <- c("Plus de 50 ans", "Entre 30 et 50 ans", "Moins de 30 ans", "Total")
data

#2)
tab_counts <- as.matrix(data[row.names(data) != "Total", colnames(data) != "Total"])
tab_counts

# Fréquences globale (somme à 100%)
tab_freq <- prop.table(tab_counts)
print(round(100 * tab_freq, 2))

#3)
# Fréquences par ligne (chaque ligne somme à 100%)
tab_freq_row <- prop.table(tab_counts, margin = 1)
print(round(100 * tab_freq_row, 2))

# Fréquences par colonne (chaque colonne somme à 100%)
tab_freq_col <- prop.table(tab_counts, margin = 2)
print(round(100 * tab_freq_col, 2))

#4)
summary(tab_counts)
chisq.test(tab_counts)

#5
# X-squared = 11.175, df = 4, p-value = 0.02466
# Au seuil 5% (α = 0.05), les deux caractères ne sont pas indépendants.