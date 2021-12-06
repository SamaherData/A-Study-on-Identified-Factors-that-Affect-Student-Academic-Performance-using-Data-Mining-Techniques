#kassambara, 2017. FAMD in R Using FactoMineR. [Online] Available at: http://www.sthda.com/english/articles/22-principal-component-methods/72-famd-in-r-using-factominer-quick-scripts-and-videos/[Accessed 19 3 2019].

library(FactoMineR)
res.famd <- FAMD(raw_df, graph = FALSE)
print(res.famd)
library("factoextra")
eig.val <- get_eigenvalue(res.famd)
head(eig.val)
fviz_screeplot(res.famd)
var <- get_famd_var(res.famd)
var
fviz_famd_var(res.famd, repel = TRUE)
# Contribution to the first dimension
fviz_contrib(res.famd, "var", axes = 1)
fviz_contrib(res.famd, "var", axes = 2)
fviz_contrib(res.famd, "var", axes = 1:2)

fviz_ellipses(res.famd, 2:4, geom = "point")
fviz_screeplot(res.famd,addlabels = TRUE, ylim = c(0,45))

summary(res.famd)
print(eig.val)
summary(res.pca)
