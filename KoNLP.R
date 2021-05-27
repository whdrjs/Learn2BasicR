#current working directory
list.files()

#other working directory

#한국어 reading 라이브러리
.libPaths()
#install.packages("KoNLP")
#library(multilinguer)

#install.packages("https://cran.r-project.org/src/contrib/Archive/foreign/foreign_0.8-80.tar.gz", repos = NULL, type="source") 
#library('foreign')

install.packages("/Library/Frameworks/R.framework/Versions/4.0/Resources/library/KoNLP_0.80.2.tar",repos = NULL, type="source")

library(multilinguer)
library(foreign)

install_jdk()
install.packages(c("hash", "tau", "Sejong", "RSQLite", "devtools", "bit", "rex", "lazyeval", "htmlwidgets", "crosstalk", "promises", "later", "sessioninfo", "xopen", "bit64", "blob", "DBI", "memoise", "plogr", "covr", "DT", "rcmdcheck", "rversions"), type = "binary")
install.packages("remotes")
# 64bit 에서만 동작합니다.
remotes::install_github('haven-jeon/KoNLP', upgrade = "never", INSTALL_opts=c("--no-multiarch"))

library(KoNLP)

extractNoun("코엔엘피가 안돼서 너무 힘들었다")
