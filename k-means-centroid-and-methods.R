# ============================================================================
# K-means cluster analysis of Mariana Trench profiles (R, cluster/factoextra).
# This produced figures in the peer-reviewed article:
#   Lemenkova, P. (2019). K-means Clustering in R Libraries {cluster} and
#   {factoextra} for Grouping Oceanographic Data.
#   International Journal of Informatics and Applied Mathematics, 2(1), 1-26.
#   DOI: https://doi.org/10.5281/zenodo.3457771
#   figshare: https://doi.org/10.6084/m9.figshare.9891203
#   HAL: https://hal.science/hal-02294056
# Author: Polina Lemenkova | ORCID: 0000-0002-5759-1089
# ============================================================================

# libraries: 'factoextra', 'FactoMiner' ‘zip’, ‘openxlsx’, ‘carData’, ‘pbkrtest’, ‘rio’, ‘car’, ‘flashClust’, ‘leaps’, ‘scatterplot3d’, ‘FactoMineR’, ‘ca’, ‘igraph’

# ЧАСТЬ 1: делаем data.frame с геоморфологией 
	# шаг-1. загружаем таблицу, делаем датафрейм
MorDF <- read.csv("Morphology.csv", header=TRUE, sep = ",")
head(MorDF)
summary(MorDF)

# ЧАСТЬ 2: рисуем центроид по двум главным дискриминантам функции
#Centroid Plot against 1st 2 discriminant functions
	# шаг-2. рисуем центроид по двум главным дискриминантам функции

set.seed(518) # размер выборки. здесь: 518 точек в каждом профиле
# 3 центра
fit3 <- kmeans(MorDF, 3)
# 4 центра
fit4 <- kmeans(MorDF, 4)
# 5 центров
fit5 <- kmeans(MorDF, 5)
# 6 центров
fit6 <- kmeans(MorDF, 6)

fit2 <- clusplot(MorDF, fit4$cluster, color=TRUE, shade=TRUE, 
   labels=2, lines=0) # визуализируем (выводим на плот) fit4
fit3 <- clusplot(MorDF, fit5$cluster, color=TRUE, shade=TRUE, 
   labels=2, lines=0) # визуализируем fit5
fit7 <- clusplot(MorDF, fit6$cluster, color=TRUE, shade=TRUE, 
   labels=2, lines=0) # визуализируем fit3
fit8 <- clusplot(MorDF, fit3$cluster, color=TRUE, shade=TRUE, 
   labels=2, lines=0)


# ЧАСТЬ 3: выбираем лучший метод кластеризации
# comparing 2 cluster solutions
	# шаг-3. рисуем центроид по двум главным дискриминантам функции
library(mclust)
fit <- Mclust(MorDF)
plot(fit) 
# plot results выдает 4 разных типа графиков: см. картинку "methods-model-fitting.jpg". 
# картинки можно сохранять как pdf. здесь получились: Mclust-uncertainty.pdf, Mclust-BIC.pdf, Mclust-density.pdf, Mclust-classification.pdf
summary(fit) # display the best model. здесь: BIC - лучший метод.
 


