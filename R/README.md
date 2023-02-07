## install R

```
sudo yum -y update
```

```
sudo yum -y install gcc-g++ R
```

## install R packages

```
R -e "install.packages(c('tidyverse', 'glue'), dependencies=TRUE, repos='http://cran.rstudio.com/')"
```

```
install.packages("tidyverse")
install.packages("glue")
```
