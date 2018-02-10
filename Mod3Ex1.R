
R version 3.3.2 (2016-10-31) -- "Sincere Pumpkin Patch"
Copyright (C) 2016 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin13.4.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> library(readr)
> refine_original <- read_csv("~/Documents/DataScienceSpringboard/test-deanna/refine-original.csv")
Parsed with column specification:
  cols(
    company = col_character(),
    `Product code / number` = col_character(),
    address = col_character(),
    city = col_character(),
    country = col_character(),
    name = col_character()
  )
> View(refine_original)
> setwd("~/Documents/DataScienceSpringboard/test-deanna")
> library(readr)
> refine_original <- read_csv("~/Documents/DataScienceSpringboard/test-deanna/refine-original.csv")
Parsed with column specification:
  cols(
    company = col_character(),
    `Product code / number` = col_character(),
    address = col_character(),
    city = col_character(),
    country = col_character(),
    name = col_character()
  )
> View(refine_original)
> library(plyr)
> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:plyr’:
  
  arrange, count, desc, failwith, id, mutate, rename,
summarise, summarize

The following objects are masked from ‘package:stats’:
  
  filter, lag

The following objects are masked from ‘package:base’:
  
  intersect, setdiff, setequal, union

> View(refine_original[1])
> View(refine_original[company])
Error in View : object 'company' not found
> View(refine_original["company"])
> lowercase(refine_original["company"])
Error: could not find function "lowercase"
> tolower((refine_original["company"]))
[1] "c(\"phillips\", \"phillips\", \"philips\", \"phllips\", \"phillps\", \"phillips\", \"akzo\", \"akzo\", \"akzo\", \"akz0\", \"ak zo\", \"akzo\", \"akzo\", \"phillips\", \"fillips\", \"phlips\", \"van houten\", \"van houten\", \"van houten\", \"van houten\", \"van houten\", \"unilver\", \"unilever\", \"unilever\", \"unilever\")"
> refine_original$company[Phillips]
Error: object 'Phillips' not found
> refine_original$company["Phillips"]
[1] NA
> refine_original$company["phillips"]
[1] NA
> refine_original$company
[1] "Phillips"   "phillips"   "philips"    "phllips"    "phillps"   
[6] "phillipS"   "akzo"       "Akzo"       "AKZO"       "akz0"      
[11] "ak zo"      "akzo"       "akzo"       "phillips"   "fillips"   
[16] "phlips"     "Van Houten" "van Houten" "van houten" "van houten"
[21] "Van Houten" "unilver"    "unilever"   "Unilever"   "unilever"  
> if (refine_original$company = "Phillips") {"Phillips" <- "phillips"}
Error: unexpected '=' in "if (refine_original$company ="
> if (refine_original$company == "Phillips") {"Phillips" <- "phillips"}
Warning message:
  In if (refine_original$company == "Phillips") { :
      the condition has length > 1 and only the first element will be used
    > refine_original$company[Phillips]
    [1] NA
    > refine_original$company["Phillips"] <- edit("phillips")
    Error in `$<-.data.frame`(`*tmp*`, "company", value = c("Phillips", "phillips",  : 
                                                              replacement has 26 rows, data has 25
                                                            > library(tidyverse)
                                                            Error in library(tidyverse) : there is no package called ‘tidyverse’
                                                            > install.packages(tidyverse)
                                                            Error in install.packages : object 'tidyverse' not found
                                                            > install.packages("tidyverse")
                                                            also installing the dependencies ‘praise’, ‘mnormt’, ‘rematch’, ‘debugme’, ‘testthat’, ‘psych’, ‘cellranger’, ‘callr’, ‘selectr’, ‘broom’, ‘forcats’, ‘haven’, ‘lubridate’, ‘modelr’, ‘readxl’, ‘reprex’, ‘rvest’, ‘xml2’
                                                            
                                                            
                                                            There are binary versions available but the source versions
                                                            are later:
                                                              binary source needs_compilation
                                                            psych     1.7.3.21  1.7.8             FALSE
                                                            callr        1.0.0  2.0.1             FALSE
                                                            haven        1.1.0  1.1.1              TRUE
                                                            lubridate    1.7.1  1.7.2              TRUE
                                                            xml2         1.1.1  1.2.0              TRUE
                                                            tidyverse    1.1.1  1.2.1             FALSE
                                                            
                                                            Do you want to install from sources the packages which need compilation?
                                                            y/n: y
                                                            trying URL 'https://cran.rstudio.com/bin/macosx/mavericks/contrib/3.3/praise_1.0.0.tgz'
                                                            Content type 'application/x-gzip' length 14439 bytes (14 KB)
                                                            ==================================================
                                                              downloaded 14 KB
                                                            
                                                            trying URL 'https://cran.rstudio.com/bin/macosx/mavericks/contrib/3.3/mnormt_1.5-5.tgz'
                                                            Content type 'application/x-gzip' length 89235 bytes (87 KB)
                                                            ==================================================
                                                              downloaded 87 KB
                                                            
                                                            trying URL 'https://cran.rstudio.com/bin/macosx/mavericks/contrib/3.3/rematch_1.0.1.tgz'
                                                            Content type 'application/x-gzip' length 10861 bytes (10 KB)
                                                            ==================================================
                                                              downloaded 10 KB
                                                            
                                                            trying URL 'https://cran.rstudio.com/bin/macosx/mavericks/contrib/3.3/debugme_1.1.0.tgz'
                                                            Content type 'application/x-gzip' length 1006443 bytes (982 KB)
                                                            ==================================================
                                                              downloaded 982 KB
                                                            
                                                            trying URL 'https://cran.rstudio.com/bin/macosx/mavericks/contrib/3.3/testthat_2.0.0.tgz'
                                                            Content type 'application/x-gzip' length 1424198 bytes (1.4 MB)
                                                            ==================================================
                                                              downloaded 1.4 MB
                                                            
                                                            trying URL 'https://cran.rstudio.com/bin/macosx/mavericks/contrib/3.3/cellranger_1.1.0.tgz'
                                                            Content type 'application/x-gzip' length 71991 bytes (70 KB)
                                                            ==================================================
                                                              downloaded 70 KB
                                                            
                                                            trying URL 'https://cran.rstudio.com/bin/macosx/mavericks/contrib/3.3/selectr_0.3-1.tgz'
                                                            Content type 'application/x-gzip' length 158761 bytes (155 KB)
                                                            ==================================================
                                                              downloaded 155 KB
                                                            
                                                            trying URL 'https://cran.rstudio.com/bin/macosx/mavericks/contrib/3.3/broom_0.4.3.tgz'
                                                            Content type 'application/x-gzip' length 1622211 bytes (1.5 MB)
                                                            ==================================================
                                                              downloaded 1.5 MB
                                                            
                                                            trying URL 'https://cran.rstudio.com/bin/macosx/mavericks/contrib/3.3/forcats_0.2.0.tgz'
                                                            Content type 'application/x-gzip' length 161802 bytes (158 KB)
                                                            ==================================================
                                                              downloaded 158 KB
                                                            
                                                            trying URL 'https://cran.rstudio.com/bin/macosx/mavericks/contrib/3.3/modelr_0.1.1.tgz'
                                                            Content type 'application/x-gzip' length 133219 bytes (130 KB)
                                                            ==================================================
                                                              downloaded 130 KB
                                                            
                                                            trying URL 'https://cran.rstudio.com/bin/macosx/mavericks/contrib/3.3/readxl_1.0.0.tgz'
                                                            Content type 'application/x-gzip' length 1445135 bytes (1.4 MB)
                                                            ==================================================
                                                              downloaded 1.4 MB
                                                            
                                                            trying URL 'https://cran.rstudio.com/bin/macosx/mavericks/contrib/3.3/rvest_0.3.2.tgz'
                                                            Content type 'application/x-gzip' length 851402 bytes (831 KB)
                                                            ==================================================
                                                              downloaded 831 KB
                                                            
                                                            
                                                            The downloaded binary packages are in
                                                            /var/folders/yc/468076vd1k55t2kl15r9tmpc0000gn/T//RtmpQmplgi/downloaded_packages
                                                            installing the source packages ‘psych’, ‘callr’, ‘haven’, ‘lubridate’, ‘reprex’, ‘xml2’, ‘tidyverse’
                                                            
                                                            trying URL 'https://cran.rstudio.com/src/contrib/psych_1.7.8.tar.gz'
                                                            Content type 'application/x-gzip' length 3311758 bytes (3.2 MB)
                                                            ==================================================
                                                              downloaded 3.2 MB
                                                            
                                                            trying URL 'https://cran.rstudio.com/src/contrib/callr_2.0.1.tar.gz'
                                                            Content type 'application/x-gzip' length 94884 bytes (92 KB)
                                                            ==================================================
                                                              downloaded 92 KB
                                                            
                                                            trying URL 'https://cran.rstudio.com/src/contrib/haven_1.1.1.tar.gz'
                                                            Content type 'application/x-gzip' length 189925 bytes (185 KB)
                                                            ==================================================
                                                              downloaded 185 KB
                                                            
                                                            trying URL 'https://cran.rstudio.com/src/contrib/lubridate_1.7.2.tar.gz'
                                                            Content type 'application/x-gzip' length 450988 bytes (440 KB)
                                                            ==================================================
                                                              downloaded 440 KB
                                                            
                                                            trying URL 'https://cran.rstudio.com/src/contrib/reprex_0.1.2.tar.gz'
                                                            Content type 'application/x-gzip' length 22879 bytes (22 KB)
                                                            ==================================================
                                                              downloaded 22 KB
                                                            
                                                            trying URL 'https://cran.rstudio.com/src/contrib/xml2_1.2.0.tar.gz'
                                                            Content type 'application/x-gzip' length 251614 bytes (245 KB)
                                                            ==================================================
                                                              downloaded 245 KB
                                                            
                                                            trying URL 'https://cran.rstudio.com/src/contrib/tidyverse_1.2.1.tar.gz'
                                                            Content type 'application/x-gzip' length 61647 bytes (60 KB)
                                                            ==================================================
                                                              downloaded 60 KB
                                                            
                                                            * installing *source* package ‘psych’ ...
                                                            ** package ‘psych’ successfully unpacked and MD5 sums checked
                                                            ** R
                                                            ** data
                                                            *** moving datasets to lazyload DB
                                                            ** inst
                                                            ** byte-compile and prepare package for lazy loading
                                                            ** help
                                                            *** installing help indices
                                                            ** building package indices
                                                            ** installing vignettes
                                                            ** testing if installed package can be loaded
                                                            * DONE (psych)
                                                            * installing *source* package ‘callr’ ...
                                                            ** package ‘callr’ successfully unpacked and MD5 sums checked
                                                            ** libs
                                                            clang -Wall -mtune=core2 -g -O2  -Wall tools/px.c -o tools/px
                                                            clang -Wall -mtune=core2 -g -O2  supervisor/supervisor.c supervisor/utils.c \
                                                            -o supervisor/supervisor
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/testthat/include"   -fPIC  -Wall -mtune=core2 -g -O2  -c init.c -o init.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/testthat/include"   -fPIC  -Wall -mtune=core2 -g -O2  -c poll.c -o poll.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/testthat/include"   -fPIC  -Wall -mtune=core2 -g -O2  -c callr-connection.c -o callr-connection.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/testthat/include"   -fPIC  -Wall -mtune=core2 -g -O2  -c callr-vector.c -o callr-vector.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/testthat/include"   -fPIC  -Wall -mtune=core2 -g -O2  -c unix/childlist.c -o unix/childlist.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/testthat/include"   -fPIC  -Wall -mtune=core2 -g -O2  -c unix/connection.c -o unix/connection.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/testthat/include"   -fPIC  -Wall -mtune=core2 -g -O2  -c unix/callr.c -o unix/callr.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/testthat/include"   -fPIC  -Wall -mtune=core2 -g -O2  -c unix/sigchld.c -o unix/sigchld.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/testthat/include"   -fPIC  -Wall -mtune=core2 -g -O2  -c unix/utils.c -o unix/utils.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/testthat/include"   -fPIC  -Wall -mtune=core2 -g -O2  -c unix/named_pipe.c -o unix/named_pipe.o
                                                            clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/testthat/include"   -fPIC  -Wall -mtune=core2 -g -O2  -c test-connections.cpp -o test-connections.o
                                                            clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/testthat/include"   -fPIC  -Wall -mtune=core2 -g -O2  -c test-runner.cpp -o test-runner.o
                                                            clang++ -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o callr.so init.o poll.o callr-connection.o callr-vector.o unix/childlist.o unix/connection.o unix/callr.o unix/sigchld.o unix/utils.o unix/named_pipe.o test-connections.o test-runner.o -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
                                                            installing via 'install.libs.R' to /Library/Frameworks/R.framework/Versions/3.3/Resources/library/callr
                                                            ** R
                                                            ** inst
                                                            ** preparing package for lazy loading
                                                            ** help
                                                            *** installing help indices
                                                            ** building package indices
                                                            ** testing if installed package can be loaded
                                                            * DONE (callr)
                                                            * installing *source* package ‘haven’ ...
                                                            ** package ‘haven’ successfully unpacked and MD5 sums checked
                                                            ** libs
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c tagged_na.c -o tagged_na.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/CKHashTable.c -o readstat/CKHashTable.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/readstat_bits.c -o readstat/readstat_bits.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/readstat_convert.c -o readstat/readstat_convert.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/readstat_error.c -o readstat/readstat_error.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/readstat_io_unistd.c -o readstat/readstat_io_unistd.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/readstat_malloc.c -o readstat/readstat_malloc.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/readstat_parser.c -o readstat/readstat_parser.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/readstat_value.c -o readstat/readstat_value.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/readstat_variable.c -o readstat/readstat_variable.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/readstat_writer.c -o readstat/readstat_writer.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/sas/ieee.c -o readstat/sas/ieee.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/sas/readstat_sas.c -o readstat/sas/readstat_sas.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/sas/readstat_sas7bcat_read.c -o readstat/sas/readstat_sas7bcat_read.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/sas/readstat_sas7bcat_write.c -o readstat/sas/readstat_sas7bcat_write.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/sas/readstat_sas7bdat_read.c -o readstat/sas/readstat_sas7bdat_read.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/sas/readstat_sas7bdat_write.c -o readstat/sas/readstat_sas7bdat_write.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/sas/readstat_sas_rle.c -o readstat/sas/readstat_sas_rle.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/sas/readstat_xport.c -o readstat/sas/readstat_xport.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/sas/readstat_xport_read.c -o readstat/sas/readstat_xport_read.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/sas/readstat_xport_write.c -o readstat/sas/readstat_xport_write.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/spss/readstat_por.c -o readstat/spss/readstat_por.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/spss/readstat_por_parse.c -o readstat/spss/readstat_por_parse.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/spss/readstat_por_read.c -o readstat/spss/readstat_por_read.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/spss/readstat_por_write.c -o readstat/spss/readstat_por_write.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/spss/readstat_sav.c -o readstat/spss/readstat_sav.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/spss/readstat_sav_parse.c -o readstat/spss/readstat_sav_parse.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/spss/readstat_sav_parse_timestamp.c -o readstat/spss/readstat_sav_parse_timestamp.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/spss/readstat_sav_read.c -o readstat/spss/readstat_sav_read.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/spss/readstat_sav_write.c -o readstat/spss/readstat_sav_write.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/spss/readstat_spss.c -o readstat/spss/readstat_spss.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/spss/readstat_spss_parse.c -o readstat/spss/readstat_spss_parse.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/stata/readstat_dta.c -o readstat/stata/readstat_dta.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/stata/readstat_dta_parse_timestamp.c -o readstat/stata/readstat_dta_parse_timestamp.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/stata/readstat_dta_read.c -o readstat/stata/readstat_dta_read.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c readstat/stata/readstat_dta_write.c -o readstat/stata/readstat_dta_write.o
                                                            clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c DfReader.cpp -o DfReader.o
                                                            clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c DfWriter.cpp -o DfWriter.o
                                                            clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c RcppExports.cpp -o RcppExports.o
                                                            clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"  -Ireadstat -fPIC  -Wall -mtune=core2 -g -O2  -c haven_types.cpp -o haven_types.o
                                                            clang++ -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o haven.so tagged_na.o readstat/CKHashTable.o readstat/readstat_bits.o readstat/readstat_convert.o readstat/readstat_error.o readstat/readstat_io_unistd.o readstat/readstat_malloc.o readstat/readstat_parser.o readstat/readstat_value.o readstat/readstat_variable.o readstat/readstat_writer.o readstat/sas/ieee.o readstat/sas/readstat_sas.o readstat/sas/readstat_sas7bcat_read.o readstat/sas/readstat_sas7bcat_write.o readstat/sas/readstat_sas7bdat_read.o readstat/sas/readstat_sas7bdat_write.o readstat/sas/readstat_sas_rle.o readstat/sas/readstat_xport.o readstat/sas/readstat_xport_read.o readstat/sas/readstat_xport_write.o readstat/spss/readstat_por.o readstat/spss/readstat_por_parse.o readstat/spss/readstat_por_read.o readstat/spss/readstat_por_write.o readstat/spss/readstat_sav.o readstat/spss/readstat_sa... <truncated>
                                                              installing to /Library/Frameworks/R.framework/Versions/3.3/Resources/library/haven/libs
                                                            ** R
                                                            ** inst
                                                            ** preparing package for lazy loading
                                                            ** help
                                                            *** installing help indices
                                                            *** copying figures
                                                            ** building package indices
                                                            ** installing vignettes
                                                            ** testing if installed package can be loaded
                                                            * DONE (haven)
                                                            * installing *source* package ‘lubridate’ ...
                                                            ** package ‘lubridate’ successfully unpacked and MD5 sums checked
                                                            ** libs
                                                            clang++ -std=c++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I. -I./cctz/include/ -I./cctz/src/ -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"   -fPIC  -Wall -mtune=core2 -g -O2 -c RcppExports.cpp -o RcppExports.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I. -I./cctz/include/ -I./cctz/src/ -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"   -fPIC  -Wall -mtune=core2 -g -O2  -c datetime.c -o datetime.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I. -I./cctz/include/ -I./cctz/src/ -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"   -fPIC  -Wall -mtune=core2 -g -O2  -c period.c -o period.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I. -I./cctz/include/ -I./cctz/src/ -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"   -fPIC  -Wall -mtune=core2 -g -O2  -c tparse.c -o tparse.o
                                                            clang++ -std=c++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I. -I./cctz/include/ -I./cctz/src/ -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"   -fPIC  -Wall -mtune=core2 -g -O2 -c update.cpp -o update.o
                                                            clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I. -I./cctz/include/ -I./cctz/src/ -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"   -fPIC  -Wall -mtune=core2 -g -O2  -c utils.c -o utils.o
                                                            clang++ -std=c++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I. -I./cctz/include/ -I./cctz/src/ -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"   -fPIC  -Wall -mtune=core2 -g -O2 -c cctz/src/time_zone_fixed.cc -o cctz/src/time_zone_fixed.o
                                                            clang++ -std=c++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I. -I./cctz/include/ -I./cctz/src/ -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"   -fPIC  -Wall -mtune=core2 -g -O2 -c cctz/src/time_zone_if.cc -o cctz/src/time_zone_if.o
                                                            clang++ -std=c++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I. -I./cctz/include/ -I./cctz/src/ -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"   -fPIC  -Wall -mtune=core2 -g -O2 -c cctz/src/time_zone_impl.cc -o cctz/src/time_zone_impl.o
                                                            clang++ -std=c++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I. -I./cctz/include/ -I./cctz/src/ -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"   -fPIC  -Wall -mtune=core2 -g -O2 -c cctz/src/time_zone_info.cc -o cctz/src/time_zone_info.o
                                                            clang++ -std=c++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I. -I./cctz/include/ -I./cctz/src/ -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"   -fPIC  -Wall -mtune=core2 -g -O2 -c cctz/src/time_zone_libc.cc -o cctz/src/time_zone_libc.o
                                                            clang++ -std=c++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I. -I./cctz/include/ -I./cctz/src/ -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"   -fPIC  -Wall -mtune=core2 -g -O2 -c cctz/src/time_zone_lookup.cc -o cctz/src/time_zone_lookup.o
                                                            clang++ -std=c++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I. -I./cctz/include/ -I./cctz/src/ -I/usr/local/include -I/usr/local/include/freetype2 -I/opt/X11/include -I"/Library/Frameworks/R.framework/Versions/3.3/Resources/library/Rcpp/include"   -fPIC  -Wall -mtune=core2 -g -O2 -c cctz/src/time_zone_posix.cc -o cctz/src/time_zone_posix.o
                                                            ar rcs libcctz.a ./cctz/src/time_zone_fixed.o ./cctz/src/time_zone_if.o ./cctz/src/time_zone_impl.o ./cctz/src/time_zone_info.o ./cctz/src/time_zone_libc.o ./cctz/src/time_zone_lookup.o ./cctz/src/time_zone_posix.o 
                                                            clang++ -std=c++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o lubridate.so RcppExports.o datetime.o period.o tparse.o update.o utils.o -L. -lcctz -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
                                                            installing to /Library/Frameworks/R.framework/Versions/3.3/Resources/library/lubridate/libs
                                                            ** R
                                                            ** data
                                                            *** moving datasets to lazyload DB
                                                            ** inst
                                                            ** preparing package for lazy loading
                                                            ** help
                                                            *** installing help indices
                                                            *** copying figures
                                                            ** building package indices
                                                            ** installing vignettes
                                                            ** testing if installed package can be loaded
                                                            * DONE (lubridate)
                                                            * installing *source* package ‘xml2’ ...
                                                            ** package ‘xml2’ successfully unpacked and MD5 sums checked
                                                            Found pkg-config cflags and libs!
                                                              Using PKG_CFLAGS=-I/usr/include/libxml2
                                                            Using PKG_LIBS=-L/usr/lib -lxml2 -lz -lpthread -licucore -lm
                                                            ------------------------- ANTICONF ERROR ---------------------------
                                                              Configuration failed because libxml-2.0 was not found. Try installing:
                                                              * deb: libxml2-dev (Debian, Ubuntu, etc)
                                                            * rpm: libxml2-devel (Fedora, CentOS, RHEL)
                                                            * csw: libxml2_dev (Solaris)
                                                            If libxml-2.0 is already installed, check that 'pkg-config' is in your
                                                            PATH and PKG_CONFIG_PATH contains a libxml-2.0.pc file. If pkg-config
                                                            is unavailable you can set INCLUDE_DIR and LIB_DIR manually via:
                                                              R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
                                                            --------------------------------------------------------------------
                                                              ERROR: configuration failed for package ‘xml2’
                                                            * removing ‘/Library/Frameworks/R.framework/Versions/3.3/Resources/library/xml2’
                                                            Warning in install.packages :
                                                              installation of package ‘xml2’ had non-zero exit status
                                                            * installing *source* package ‘reprex’ ...
                                                            ** package ‘reprex’ successfully unpacked and MD5 sums checked
                                                            ** R
                                                            ** inst
                                                            ** preparing package for lazy loading
                                                            ** help
                                                            *** installing help indices
                                                            ** building package indices
                                                            ** testing if installed package can be loaded
                                                            * DONE (reprex)
                                                            ERROR: dependency ‘xml2’ is not available for package ‘tidyverse’
                                                            * removing ‘/Library/Frameworks/R.framework/Versions/3.3/Resources/library/tidyverse’
                                                            Warning in install.packages :
                                                              installation of package ‘tidyverse’ had non-zero exit status
                                                            
                                                            The downloaded source packages are in
                                                            ‘/private/var/folders/yc/468076vd1k55t2kl15r9tmpc0000gn/T/RtmpQmplgi/downloaded_packages’
                                                            > replace("Phillips", refine_original, "phillips")
                                                            Error in replace("Phillips", refine_original, "phillips") : 
                                                              invalid subscript type 'list'
                                                            > phillips <- replace("Phillips", refine_original, "phillips")
                                                            Error in replace("Phillips", refine_original, "phillips") : 
                                                              invalid subscript type 'list'
                                                            > refine_original$company[refine_original$company=="Phillips"] <- "phillips"
                                                            > View(refine_original)
                                                            > company <- select(refine_original$company, contains("ps"))
                                                            Error in UseMethod("select_") : 
                                                              no applicable method for 'select_' applied to an object of class "character"
                                                            > refine_original$company[refine_original$company %like% "ps"] <- "phillips"
                                                            Error in refine_original$company[refine_original$company %like% "ps"] <- "phillips" : 
                                                              could not find function "%like%"
                                                            > library(data.table)
                                                            data.table 1.10.4.3
                                                            **********
                                                              This installation of data.table has not detected OpenMP support. It should still work but in single-threaded mode. If this is a Mac, please ensure you are using R>=3.4.0 and have installed the MacOS binary package from CRAN: see ?install.packages, the 'type=' argument and the 'Binary packages' section. If you compiled from source, please reinstall and precisely follow the installation instructions on the data.table homepage. This warning message should not occur on Windows or Linux. If it does and you've followed the installation instructions on the data.table homepage, please file a GitHub issue.
                                                            **********
                                                            The fastest way to learn (by data.table authors): https://www.datacamp.com/courses/data-analysis-the-data-table-way
                                                            Documentation: ?data.table, example(data.table) and browseVignettes("data.table")
                                                            Release notes, videos and slides: http://r-datatable.com
                                                            
                                                            Attaching package: ‘data.table’
                                                            
                                                            The following objects are masked from ‘package:dplyr’:
                                                            
                                                            between, first, last
                                                            
                                                            > refine_original$company[refine_original$company %like% "ps"] <- "phillips"
                                                            > View(refine_original)
                                                            > refine_original$company[refine_original$company %like% "pS"] <- "phillips"
                                                            > refine_original$company[7:13] <- "akzo"
                                                            > View(refine_original)
                                                            > refine_original$company[refine_original$company %like% "ten"] <- "Van Houten"
                                                            > refine_original$company[refine_original$company %like% "er"] <- "unilever"
                                                            > View(refine_original)
                                                            > refine_original$company[refine_original$company %like% "ten"] <- "van houten"
                     
