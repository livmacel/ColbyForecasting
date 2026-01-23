Phoca vitulina
================

[Harbor seals](https://en.wikipedia.org/wiki/Harbor_seal) (Phoca
vitulina)

![](C04_assignment_files/figure-gfm/split_plot-1.png)<!-- -->

![](C04_assignment_files/figure-gfm/plot_data-1.png)<!-- -->

    ## 

    ## ── Recipe ──────────────────────────────────────────────────────────────────────

    ## 

    ## ── Inputs

    ## Number of variables by role

    ## outcome:   1
    ## predictor: 9
    ## coords:    2

    ## # A tibble: 12 × 4
    ##    variable type      role      source  
    ##    <chr>    <list>    <chr>     <chr>   
    ##  1 depth    <chr [2]> predictor original
    ##  2 month    <chr [2]> predictor original
    ##  3 SSS      <chr [2]> predictor original
    ##  4 U        <chr [2]> predictor original
    ##  5 Sbtm     <chr [2]> predictor original
    ##  6 V        <chr [2]> predictor original
    ##  7 Tbtm     <chr [2]> predictor original
    ##  8 MLD      <chr [2]> predictor original
    ##  9 SST      <chr [2]> predictor original
    ## 10 X        <chr [2]> coords    original
    ## 11 Y        <chr [2]> coords    original
    ## 12 class    <chr [3]> outcome   original

    ## # A workflow set/tibble: 4 × 4
    ##   wflow_id       info             option    result    
    ##   <chr>          <list>           <list>    <list>    
    ## 1 default_glm    <tibble [1 × 4]> <opts[0]> <list [0]>
    ## 2 default_rf     <tibble [1 × 4]> <opts[0]> <list [0]>
    ## 3 default_btree  <tibble [1 × 4]> <opts[0]> <list [0]>
    ## 4 default_maxent <tibble [1 × 4]> <opts[0]> <list [0]>

    ## i    No tuning parameters. `fit_resamples()` will be attempted

    ## i 1 of 4 resampling: default_glm

    ## ✔ 1 of 4 resampling: default_glm (830ms)

    ## i 2 of 4 tuning:     default_rf

    ## i Creating pre-processing data to finalize 1 unknown parameter: "mtry"

    ## ✔ 2 of 4 tuning:     default_rf (1m 26.2s)

    ## i 3 of 4 tuning:     default_btree

    ## i Creating pre-processing data to finalize 1 unknown parameter: "mtry"

    ## → A | warning: `early_stop` was reduced to 0.

    ## There were issues with some computations   A: x1There were issues with some computations   A: x2There were issues with some computations   A: x3There were issues with some computations   A: x4There were issues with some computations   A: x5There were issues with some computations   A: x5
    ## ✔ 3 of 4 tuning:     default_btree (45.2s)
    ## i 4 of 4 tuning:     default_maxent
    ## ✔ 4 of 4 tuning:     default_maxent (3.8s)

![](C04_assignment_files/figure-gfm/wflow_plot-1.png)<!-- -->

    ## # A tibble: 4 × 5
    ##   wflow_id       accuracy boyce_cont roc_auc tss_max
    ##   <chr>             <dbl>      <dbl>   <dbl>   <dbl>
    ## 1 default_glm       0.843     0.904    0.673   0.279
    ## 2 default_rf        0.842     0.976    0.700   0.351
    ## 3 default_btree     0.843     0.0564   0.677   0.339
    ## 4 default_maxent    0.599     0.848    0.666   0.282

![](C04_assignment_files/figure-gfm/best_model-1.png)<!-- -->

![](C04_assignment_files/figure-gfm/model_fit-1.png)<!-- -->

![](C04_assignment_files/figure-gfm/plot_model-1.png)<!-- -->

![](C04_assignment_files/figure-gfm/rf_plot-1.png)<!-- -->

    ## # A tibble: 4 × 4
    ##   .metric    .estimator .estimate .config        
    ##   <chr>      <chr>          <dbl> <chr>          
    ## 1 accuracy   binary         0.842 pre0_mod0_post0
    ## 2 boyce_cont binary         0.976 pre0_mod0_post0
    ## 3 roc_auc    binary         0.700 pre0_mod0_post0
    ## 4 tss_max    binary         0.351 pre0_mod0_post0

    ## # A tibble: 1,267 × 6
    ##    class    .pred_class .pred_presence .pred_background  .row .config        
    ##    <fct>    <fct>                <dbl>            <dbl> <int> <chr>          
    ##  1 presence background          0.0171            0.983     1 pre0_mod0_post0
    ##  2 presence background          0.0368            0.963     3 pre0_mod0_post0
    ##  3 presence background          0.133             0.867     5 pre0_mod0_post0
    ##  4 presence background          0.0570            0.943     6 pre0_mod0_post0
    ##  5 presence background          0.108             0.892     7 pre0_mod0_post0
    ##  6 presence background          0.0594            0.941    10 pre0_mod0_post0
    ##  7 presence background          0.0892            0.911    12 pre0_mod0_post0
    ##  8 presence background          0.0494            0.951    14 pre0_mod0_post0
    ##  9 presence background          0.120             0.880    15 pre0_mod0_post0
    ## 10 presence background          0.0739            0.926    17 pre0_mod0_post0
    ## # ℹ 1,257 more rows

    ## ══ Workflow [trained] ══════════════════════════════════════════════════════════
    ## Preprocessor: Recipe
    ## Model: rand_forest()
    ## 
    ## ── Preprocessor ────────────────────────────────────────────────────────────────
    ## 0 Recipe Steps
    ## 
    ## ── Model ───────────────────────────────────────────────────────────────────────
    ## Ranger result
    ## 
    ## Call:
    ##  ranger::ranger(x = maybe_data_frame(x), y = y, mtry = min_cols(~1L,      x), num.trees = ~2000L, importance = ~"impurity", num.threads = 1,      verbose = FALSE, seed = sample.int(10^5, 1), probability = TRUE) 
    ## 
    ## Type:                             Probability estimation 
    ## Number of trees:                  2000 
    ## Sample size:                      3859 
    ## Number of independent variables:  9 
    ## Mtry:                             1 
    ## Target node size:                 10 
    ## Variable importance mode:         impurity 
    ## Splitrule:                        gini 
    ## OOB prediction error (Brier s.):  0.1716761

![](C04_assignment_files/figure-gfm/btree_plot-1.png)<!-- -->
