dSdata <- read.table("C:/Users/Jin Zhang/Google Drive/2nd project - sigma factor/with ptg/28dS.txt")
dNdata <- read.table("C:/Users/Jin Zhang/Google Drive/2nd project - sigma factor/with ptg/28dN.txt")

ss <- dim(dNdata)

for (i in 1:ss[2]) {
	ds <- dSdata[,i]
	dn <- dNdata[,i]
	ds2 <- ds**2
	mod.1 <- lm(dn ~ ds)
	mod.2 <- lm(dn ~ ds2 + ds)
	result <- anova(mod.1, mod.2)
	capture.output(mod.1,file="C:/tmp/output.doc",append=TRUE)
	capture.output(mod.2,file="C:/tmp/output.doc",append=TRUE)
	capture.output(result,file="C:/tmp/output.doc",append=TRUE)
}
