Longfin inshore squid
================

I decided to add [Longfin
squid](https://en.wikipedia.org/wiki/Longfin_inshore_squid) as my second
species. They are one of the preys of Harbor seals, my primary species.

    ##       id            basisOfRecord        eventDate               year     
    ##  Length:9735        Length:9735        Min.   :1873-08-02   Min.   :1873  
    ##  Class :character   Class :character   1st Qu.:1979-08-19   1st Qu.:1979  
    ##  Mode  :character   Mode  :character   Median :1991-09-22   Median :1991  
    ##                                        Mean   :1990-05-08   Mean   :1990  
    ##                                        3rd Qu.:2001-10-03   3rd Qu.:2001  
    ##                                        Max.   :2019-05-06   Max.   :2019  
    ##                                                                           
    ##      month       eventTime         individualCount              geom     
    ##  Oct    :3644   Length:9735        Min.   :    1.0   POINT        :9735  
    ##  Sep    :2147   Class :character   1st Qu.:    8.0   epsg:4326    :   0  
    ##  Mar    :1025   Mode  :character   Median :   55.0   +proj=long...:   0  
    ##  Apr    : 746                      Mean   :  425.2                       
    ##  Feb    : 742                      3rd Qu.:  310.0                       
    ##  May    : 478                      Max.   :27589.0                       
    ##  (Other): 953

![](Second_Species_files/figure-gfm/Monthly_code_block-1.png)<!-- -->

    ## stars object with 2 dimensions and 1 attribute
    ## attribute(s):
    ##       Min. 1st Qu. Median Mean 3rd Qu. Max. NA's
    ## mask     1       1      1    1       1    1 4983
    ## dimension(s):
    ##   from  to offset    delta refsys point x/y
    ## x    1 121 -74.93  0.08226 WGS 84 FALSE [x]
    ## y    1  89  46.08 -0.08226 WGS 84 FALSE [y]

![](Second_Species_files/figure-gfm/mask_plot-1.png)<!-- -->

![](Second_Species_files/figure-gfm/bias_map-1.png)<!-- -->

    ## # A tibble: 24 × 3
    ##    month class          n
    ##    <fct> <fct>      <int>
    ##  1 Jan   presence      42
    ##  2 Jan   background   811
    ##  3 Feb   presence     499
    ##  4 Feb   background   811
    ##  5 Mar   presence     539
    ##  6 Mar   background   811
    ##  7 Apr   presence     495
    ##  8 Apr   background   811
    ##  9 May   presence     177
    ## 10 May   background   811
    ## # ℹ 14 more rows

![](Second_Species_files/figure-gfm/plot_presence_bkgd-1.png)<!-- -->

![](Second_Species_files/figure-gfm/p_b_plot-1.png)<!-- -->
