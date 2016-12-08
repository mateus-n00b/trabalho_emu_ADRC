library("Hmisc")
a<-read.table("botnet0.txt")[,1]
b<-read.table("botnet10.txt")[,1]
heights = c(mean(a),mean(b))
x <-c(1,2)
dinf<-heights-c(1.96 * sd(a)/sqrt(30), 1.96*sd(b)/sqrt(30))
dsup<-heights+c(1.96 * sd(a)/sqrt(30), 1.96 * sd(b)/sqrt(30))

print (mean(a))
print (mean(b))
print (1.96 * sd(a)/sqrt(30))
print (1.96 * sd(b)/sqrt(30))
png("comp_100km.png")
bp <-barplot(heights, ylim=c(0,1), ylab="PDR (%)",
main="Comparação entre os RTTs no ataque por inundação",
names=c('0', '10'), xlab="Tamanho da botnet")
errbar(bp[,1], heights, dsup, dinf, add=T)
dev.off()
