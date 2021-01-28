setwd("/Users/ainadmn/Desktop/")

casos_sarampiom <- read.csv("casos_regiones.csv", sep=";", stringsAsFactors=TRUE)

plot_global <- plot(casos_sarampiom$Años, casos_sarampiom$Global, type="l", xlab = "AÑOS", ylab = "Nº CASOS SARAMPIÓN", main="CASOS REGISTRADOS DE SARAMPIÓN (globalmente)")

plot(casos_sarampiom$Años, casos_sarampiom$África, type="l", col="orange", xlab = "AÑOS", ylab = "Nº CASOS SARAMPIÓN", main="CASOS REGISTRADOS DE SARAMPIÓN (regionalmente)")
lines(casos_sarampiom$Años, casos_sarampiom$Americas, col="blue")
lines(casos_sarampiom$Años, casos_sarampiom$Sudeste.asiático, col="green")
lines(casos_sarampiom$Años, casos_sarampiom$Europa, col="purple")
lines(casos_sarampiom$Años, casos_sarampiom$Mediterráneo.Este, col="red")
lines(casos_sarampiom$Años, casos_sarampiom$Pacífico.Oeste, col="brown")

legend('topright', legend=c("África", "Americas", "Sudeste Asiático", "Europa", "Mediterráneo Este", "Pacífico Oeste"), col=c("orange","blue","green","purple","red","brown"), lwd=2, inset=0.05)


