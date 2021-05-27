list.files()

#setwd(" ")
#라이브러리
library(KoNLP)

useNIADic()

mergeUserDic(data.frame(c("봉황"),c("ncn")))

text1<-readLines("test.txt")
extractNoun(text1)
text2<-extractNoun(text1)
text3<-unlist(text2)
text3
#전처리
text4<-gsub("이","",text3)
text4<-gsub("한","",text3)
text4<-gsub("들","",text3)
text4<-gsub("들이","",text3)
text4<-gsub("하","",text3)
text4<-gsub("수","",text3)
text4<-gsub("바","",text3)
text4<-gsub("들이","",text3)
text4<-gsub("뒤","",text3)
text4<-gsub("주","",text3)
text4<-gsub("자","",text3)
text4<-gsub("세","",text3)
text4<-gsub("내","",text3)
text4<-gsub("와","",text3)

#글자수 정리
text5<-text4[nchar(text4)<5]
text5<-text5[nchar(text5)>1]

#text6<-sort(table(text5))  #오름차순 정렬

text6<-sort(table(text5),decreasing=T)#내림차순 정렬

#상위 200개 가져오기 
text7<-head(text6, 200)

#wordcloud로 보여주기
install.packages("wordcloud2")
library(wordcloud2)

wordcloud2(text7)

wordcloud2(text7,size = 0.5)
