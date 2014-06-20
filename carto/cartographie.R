library(rgdal)
library(ggplot2)
library(maptools)
library(ggthemes)
library(rgeos)
library("wesanderson")
pal <- wes.palette(name = "Zissou", type = "continuous")

"GeoJSON" %in% ogrDrivers()$name
ogrDrivers()$name

map  <- readOGR("carto/conseils-quartiers.geojson", layer = "geometry")

map  <-  readOGR("map.geojson", "FeatureCollection")
regions  <- readOGR(dsn="data/regions_ipad/", layer = "regions_ipad-france")
reg  <- fortify(regions, region = "FID")


regions  <- readOGR(dsn="data/regions/", layer = "regions-france")
reg  <- fortify(regions, region = "FID")



regions  <- readOGR(dsn="data/layers/", layer = "POLYGON")

