library(factoextra)
library(cluster)
#Menginput Data
data<-read.delim("clipboard")
data
x=data[,-1]
row.names(x)=data[,1]
View(x)
#Menentukan K Optimum
#Metode Elbow
fviz_nbclust(x, pam, method= "wss")
#Metode Silhoette
fviz_nbclust(x, pam, method= "silhouette")
#Membentuk Klaster
set.seed(123)
kmed_clustering<-pam(x, k = 2)
kmed_clustering
#membuat plot model final k-medoids
fviz_cluster(kmed_clustering, x)