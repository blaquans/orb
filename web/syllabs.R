library("httr")


?POST

json  <- readLines("~/Documents/ropenfisca/json/syllabs.json")

result <- POST(url='http://api.syllabs.com/v0/entities?format=json', body =json)
result$url
result$handle
result$status_code

system("curl -H \"Api-Key: a19e23fd46603506ba2d0572be05947e\" --data-urlencode text@example.txt http://api.syllabs.com/v0/entities?format=json")
