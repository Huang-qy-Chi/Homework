rm(list = ls())
mu0 = 0
u <- rep(0, 1000)
for(i in 1:1000){
  d1 <- rnorm(100, 0.3, 1)  #原假设mu0=0，事实上是错误的
  T2 <- sqrt(length(d1))*(mean(d1)-mu0)/sd(d1)
  if(T2>qt(0.95,length(d1)-1 )){     #单边检验，拒绝域包含Z，即判断正确
    u[i] = 1    #判断正确记为1
  }
}
mean(u)