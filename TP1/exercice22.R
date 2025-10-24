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

tab_countsSE <- xtabs(~ Sexe + EtatCivil, data = data)
head(tab_countsSE)
tab_freq_SE <- prop.table(tab_countsSE)
print(round(100 * tab_freq_SE, 2))

tab_countsSD <- xtabs(~ Sexe + Diplome, data = data)
head(tab_countsSD)
tab_freq_SD <- prop.table(tab_countsSD)
print(round(100 * tab_freq_SD, 2))

tab_countsSA <- xtabs(~ Sexe + AvisReforme, data = data)
head(tab_countsSA)
tab_freq_SA <- prop.table(tab_countsSA)
print(round(100 * tab_freq_SA, 2))

tab_countsED <- xtabs(~ EtatCivil + Diplome, data = data)
head(tab_countsED)
tab_freq_ED <- prop.table(tab_countsED)
print(round(100 * tab_freq_ED, 2))

tab_countsEA <- xtabs(~ EtatCivil + AvisReforme, data = data)
head(tab_countsEA)
tab_freq_EA <- prop.table(tab_countsEA)
print(round(100 * tab_freq_EA, 2))

tab_countsDA <- xtabs(~ Diplome + AvisReforme, data = data)
head(tab_countsDA)
tab_freq_DA <- prop.table(tab_countsDA)
print(round(100 * tab_freq_DA, 2))

# Fréquences globales (somme à 100%)
tab_freq <- prop.table(tab_counts)
print(round(100 * tab_freq, 2))




