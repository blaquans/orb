codecommune  <- function(codecom) {
  require("XML", quietly= TRUE)
  out <- list()
  out$code.dep  <- substr(codecom,1,2)
  out$code.com  <- substr(codecom,3,5)
  tab  <-  readHTMLTable(paste0("http://www.insee.fr/fr/methodes/nomenclatures/cog/fichecommunale.asp?codedep=",out$code.dep,"&codecom=",out$code.com), stringsAsFactors = FALSE, as.data.frame = TRUE)
  tab$fiche_communale$name <- iconv(tab$fiche_communale$Nom, from = "", to = "UTF-8")
  out$code.region  <- tab$fiche_communale$Code[2] 
  out$nom.dep  <- tab$fiche_communale$name[3]
  out$nom.region  <- tab$fiche_communale$name[2]
  return(out)
}

codecommune("01005")

