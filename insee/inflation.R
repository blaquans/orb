# http://www.insee.fr/fr/themes/calcul-pouvoir-achat.asp?sommeDepart=100&deviseDepart=AncFranc&anneeDepart=1903&deviseArrivee=Euro&anneeArrivee=2012

inflation  <-  function(input, input.currency, input.year, output.currency, output.year) {
  require("RCurl", quietly= TRUE)
  oldscipen <- options('scipen')$scipen
  options(scipen = 999)
  tx <- getURL(paste("http://www.insee.fr/fr/themes/calcul-pouvoir-achat.asp?sommeDepart=",format(input, scientific = FALSE), "&deviseDepart=",input.currency,"&anneeDepart=",input.year, "&deviseArrivee=",output.currency, "&anneeArrivee=",output.year, sep = ""))
  patrick  <- ".*<strong class=\"resultat\">([[:digit:][:blank:],]+)[[:blank:]eurosfracin]+</strong>.*"
  if (grepl(pattern = patrick, x = tx) == TRUE){
    out <- sub(pattern = patrick  , replacement = "\\1", x = tx)  
    out <- as.numeric(gsub( pattern = "[[:blank:]]", replacement = "", x = gsub(pattern = ",", replacement = ".", x = out)))
    }
  else {
    cat("ERROR \n")
    out <- NA
    }
  options(scipen = oldscipen)
  return(out)
  }
