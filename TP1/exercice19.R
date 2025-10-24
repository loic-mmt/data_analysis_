#exercice 19
#1)
data <- data.frame(BEPC = c(15, 10, 15, 40), BAC = c(12, 18, 5, 35),
                   Licence = c(3, 4, 8, 15), Total = c(30, 32, 28, 90))

rownames(data) <- c("Plus de 50 ans", "Entre 30 et 50 ans", "Moins de 30 ans", "Total")
data

#2)
tab_counts <- as.matrix(data[row.names(data) != "Total", colnames(data) != "Total"])
tab_counts

# Fréquences globale (somme à 1)
tab_freq <- prop.table(tab_counts)
print(round(tab_freq, 3))

#3)
# Fréquences par ligne (chaque ligne somme à 1)
tab_freq_row <- prop.table(tab_counts, margin = 1)
print(round(tab_freq_row, 3))

# Fréquences par colonne (chaque colonne somme à 1)
tab_freq_col <- prop.table(tab_counts, margin = 2)
print(round(tab_freq_col, 3))

#4)
