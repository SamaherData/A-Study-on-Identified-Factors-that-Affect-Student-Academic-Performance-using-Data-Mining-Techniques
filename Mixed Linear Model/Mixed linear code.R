#Bates, D., 2010. lme4: Mixed-effects modeling with R. USA: Springer.
install.packages("lme4")

install.packages("raneftest")
install.packages("Matrix")

library(car)

library(ggplot2) 


library(lme4)

#(Bates, 2010)
d = read.csv('Q:/downlads/combinedu.csv')
res2 = lmer (G ~  1 + (1 | id),data = d, REML = TRUE)
res1 = lmer (G ~ 1 +  traveltime + Walc + goout + (1 | id), data = d)

coef(res1)$id[1]
fixef(res1)['(Intercept)'] + ranef(res1)$id
anova(res1,res2)
summary(res1)
display(res1)
logLikelihood = logLik(res2)
deviance = -2*logLikelihood[1]; 
deviance
p = 1 # number of parameters = 3 (fixed) + 1 (random)
deviance + 2*(p+1) # total parameters = 4 + 1 for estimated residual variance
AIC(res1)
coef(res1)
BIC(res1)
#get the RMSE
res1.rmse <- sqrt(mean(residuals(res1)^2))
res1.rmse
plot(res1)
fixef(res1)
ranef(res1, drop = TRUE)
plot(res1, rug = FALSE)

plot(res1,id~resid(.))




plot(fitted(res1), residuals(res1))
qqnorm(residuals(res1))

##
plot(fitted(res1), residuals(res1))
abline(h=0)
##

ranef(res1)

anova(res1,res2)
rr1 <- ranef(res2, condVar = TRUE)
plot(rr1)
summary(res2)
u0 <- ranef(res2, condVar = TRUE)
u0se <- sqrt(attr(u0[[1]], "postVar")[1, , ]) 
u0se
str(u0[1]) 