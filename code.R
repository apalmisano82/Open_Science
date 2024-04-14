#import data
journals<-read.csv(file="csv/journals.csv", header = TRUE, sep = ",")
# plot figure 1
barplot(as.matrix(journals[,2:5]), main = "", beside = TRUE, col=c("blue","cyan","green","red"), ylab="Percentage")
legend("topleft", c("data sharing","supplementary","doi","reproducibility"),fill = c("blue","cyan","green","red"), horiz = TRUE, cex=0.7)
dev.print(device=pdf, file="pdf/Fig1.pdf")

#import data
jas<-read.csv(file="csv/jas.csv", header = TRUE, sep = ",")
xticks <- seq(1,10,1)
# plot figure 3
plot(jas$n, lty="solid", type="l", col="blue", lwd=2, xlab="", ylab="", xaxt="n",cex.axis=1, main="Journal of Archaeological Science")
lines(jas$X., lty="solid", type="l", col="red", lwd=2)
axis(side=1, at=xticks, labels=seq(2012,2021,1), las=2, cex.axis=1)
abline(v=seq(1,12,1), lwd=0.8, lty="dotted", col="grey30")
abline(h=seq(2,12,2), lwd=0.8, lty="dotted", col="grey30")
legend(1, 12, legend=c("frequency (n)", "% of papers"),col=c("blue", "red"), lty=1:1, cex=0.8)
dev.print(device = pdf, file="pdf/Fig3.pdf")
