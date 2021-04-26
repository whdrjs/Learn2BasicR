x1<-c(1,2,3,4)
x2<-c("Apple","Peach","Banana","Grape")
x3<-c(500,200,100,50)
x4<-c(5,2,4,7)

#dataframe
dataframe <- data.frame(x1,x2,x3,x4)
dataframe
dataframe[ ,2]
dataframe[3,4]
dataframe$x1
dataframe$x2

#첫번째 행과 두번째 행 출력하기
dataframe[c(1,2),]
dataframe[,c(1,2)]
