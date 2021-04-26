#특정조건에 맞는 행 추출
subset(dataframe, x4>3)
subset(dataframe, x2=="Apple")
subset(dataframe, x3>=200)

dataframe$x2
subset(dataframe,x3>=200,select = x2)

#문제
#Qty(x4)개수가 3개 이상인 행에서 Name(x2)하고 Price(x3)만 추출
subset(dataframe,x4>=3,select = c(x2,x3))
