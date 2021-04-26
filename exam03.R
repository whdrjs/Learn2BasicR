#행렬 Matrix

v1<-c(1,2,3,4)
mat<-matrix(v1)
mat
#메트릭스는 기복적으로 열을 기준으로 값이 들어간다

mat2<-matrix(v1,nrow=2)
mat2
mat3<-matrix(v1,nrow=2,byrow=T)
mat3
mat[2]
mat2[2,1]
mat3[2,1]

#행 또는 열 값 꺼내기
mat2[1,]
mat2[,2]
