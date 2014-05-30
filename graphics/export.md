
## PDF

When exporting a graph as a PDF, you may encounter some problem when you import it in a vector graphics editor such as Adobe Illustrator or Inkscape. It is  better to use the option useDingbats = FALSE.


```r
pdf("figure/test.pdf", useDingbats = FALSE)
plot(1:10, 10:1, pch = 16)
dev.off()
```

```
## pdf 
##   2
```


