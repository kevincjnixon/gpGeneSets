# gpGeneSets
R objects of genesets from gprofiler (https://biit.cs.ut.ee/gprofiler/gost)

Loading this package will make gene sets from g:profiler available as R objects for further use with BinfTools.

Current genesets:

gp_hs - all Homo sapiens gene sets
gp_mm - all Mus musculus gene sets
gp_dm - all Drosophila melanogaster gene sets

Usage:

```{r}
#Installation
devtools::install_github("kevincjnixon/gpGeneSets")
#Loading
library(gpGeneSets)

#load a geneset
data("gp_hs")
data("gp_mm")
data("gp_ds")

#Retrieve GO term names from GO IDs
x<-ID2Name(x, col.name="term_id")
```
To retrieve the GO term names from GO IDs, supply a data.frame object (x) with a column contatining the GO IDs. Provide the column name in the argument 'col.name'. Term names will be output in the column name 'term_name'. If the col.name supplied is 'term_name', that column will be changed to 'term_id' and the term names will be stored in 'term_name'.
