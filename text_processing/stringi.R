
#install.packages('stringi')
library("stringi")

toupper("groß")
stri_trans_toupper("groß", locale = "de_DE")
