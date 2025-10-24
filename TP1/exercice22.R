#exercice 22
#1)
library(readxl)
data <- read_excel("TP1/post-196736-Donnees sur enseignants.xls")
head(data)

#2)
names(data)
summary(data)

#3)

#4)

tab_counts <- xtabs(~ Sexe + EtatCivil + Diplome + AvisReforme, data = data)
head(tab_counts)

tab_counts2D <- xtabs(~ Sexe + EtatCivil, data = data)
head(tab_counts2D)

# Fréquences globales (somme à 100%)
tab_freq <- prop.table(tab_counts)
print(round(100 * tab_freq, 2))

tab_freq_2D <- prop.table(tab_counts2D)
print(round(100 * tab_freq_2D, 2))
