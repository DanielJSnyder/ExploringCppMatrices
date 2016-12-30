setwd("./Results")

arrO0 <- read.csv("ATestO0.txt")
vecO0 <- read.csv("VTestO0.txt")
arrO1 <- read.csv("ATestO1.txt")
vecO1 <- read.csv("VTestO1.txt")
arrO2 <- read.csv("ATestO2.txt")
vecO2 <- read.csv("VTestO2.txt")
arrO3 <- read.csv("ATestO3.txt")
vecO3 <- read.csv("VTestO3.txt")

#read in the clang versions
CarrO0 <- read.csv("ACTestO0.txt")
CvecO0 <- read.csv("VCTestO0.txt")
CarrO1 <- read.csv("ACTestO1.txt")
CvecO1 <- read.csv("VCTestO1.txt")
CarrO2 <- read.csv("ACTestO2.txt")
CvecO2 <- read.csv("VCTestO2.txt")
CarrO3 <- read.csv("ACTestO3.txt")
CvecO3 <- read.csv("VCTestO3.txt")
CarrOfast <- read.csv("ACTestOfast.txt")
CvecOfast <- read.csv("VCTestOfast.txt")

#plot O0: vector vs array
png(file = "O0.png")
plot( x = arrO0$n, y = arrO0$time, type = "l", col = "red", xlab = "N", ylab = "Runtime", main = "Optimization = O0")
lines(x = vecO0$n, y = vecO0$time, type = "l", col = "blue")
lines(x = CarrO0$n, y = CarrO0$time, type= "l", lty = 2, col = "red")
lines(x = CvecO0$n, y = CvecO0$time, type= "l", lty = 2, col = "blue")
legend(1,15, c("gcc: Arrays", "gcc: Vectors", "clang: Arrays", "clang: Vectors"), lty = c(1,1, 2, 2), col = c("red", "blue", "red", "blue"))
dev.off()

#plot O1: vector vs array
png(file = "O1.png")
plot( x = arrO1$n, y = arrO1$time, type = "l", col = "red", xlab = "N", ylab = "Runtime", main = "Optimization = O1")
lines(x = vecO1$n, y = vecO1$time, type = "l", col = "blue")
lines(x = CarrO1$n, y = CarrO1$time, type= "l", lty = 2, col = "red")
lines(x = CvecO1$n, y = CvecO1$time, type= "l", lty = 2, col = "blue")
legend(1,15, c("gcc: Arrays", "gcc: Vectors", "clang: Arrays", "clang: Vectors"), lty = c(1,1, 2, 2), col = c("red", "blue", "red", "blue"))
dev.off()

#plot O2: vector vs array
png(file = "O2.png")
plot( x = arrO2$n, y = arrO2$time, type = "l", col = "red", xlab = "N", ylab = "Runtime", main = "Optimization = O2")
lines(x = vecO2$n, y = vecO2$time, type = "l", col = "blue")
lines(x = CarrO2$n, y = CarrO2$time, type= "l", lty = 2, col = "red")
lines(x = CvecO2$n, y = CvecO2$time, type= "l", lty = 2, col = "blue")
legend(1,15, c("gcc: Arrays", "gcc: Vectors", "clang: Arrays", "clang: Vectors"), lty = c(1,1, 2, 2), col = c("red", "blue", "red", "blue"))
dev.off()

#plot O3: vector vs array
png(file = "O3.png")
plot( x = arrO3$n, y = arrO3$time, type = "l", col = "red", xlab = "N", ylab = "Runtime", main = "Optimization = O3")
lines(x = vecO3$n, y = vecO3$time, type = "l", col = "blue")
lines(x = CarrO3$n, y = CarrO3$time, type= "l", lty = 2, col = "red")
lines(x = CvecO3$n, y = CvecO3$time, type= "l", lty = 2, col = "blue")
legend(1,15, c("gcc: Arrays", "gcc: Vectors", "clang: Arrays", "clang: Vectors"), lty = c(1,1, 2, 2), col = c("red", "blue", "red", "blue"))
dev.off()

#clang only Ofast
png(file = "clangOfast.png")
plot(x = CarrOfast$n, y = CarrOfast$time, type = "l", col = "red", xlab = "N", ylab = "Runtime", main = "Clang: Optimization = Ofast")
lines(x = CvecOfast$n, y = CvecOfast$time, type = "l", col = "blue");
legend(1,15, c("Array based Matrix", "Vector based Matrix"), lty = c(1,1), col = c("red", "blue"))
dev.off()

png(file = "O0comp.png")
plot(x = arrO0$n, y = (arrO0$time - vecO0$time), type = "l", col = "red",
	xlab = "N", ylab = "Runtime difference", main = "No Optimizations comparison")
dev.off();


png(file = "O1comp.png")
plot(x = arrO1$n, y = (arrO1$time - vecO1$time), type = "l", col = "red",
	xlab = "N", ylab = "Runtime difference", main = "No Optimizations comparison")
dev.off();


png(file = "O2comp.png")
plot(x = arrO2$n, y = (arrO2$time - vecO2$time), type = "l", col = "red",
	xlab = "N", ylab = "Runtime difference", main = "No Optimizations comparison")
dev.off();


png(file = "O3comp.png")
plot(x = arrO3$n, y = (arrO3$time - vecO3$time), type = "l", col = "red",
	xlab = "N", ylab = "Runtime difference", main = "No Optimizations comparison")

dev.off();
