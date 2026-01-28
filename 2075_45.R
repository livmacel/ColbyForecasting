cfg = read_configuration(scientificname = "Phoca vitulina",
                         version = "v1", 
                         path = data_path("models"))
db = brickman_database()
db = brickman_database()
present_conditions = read_brickman(db |> filter(scenario == "PRESENT", 
                                                interval == "mon"),
                                   add = c("depth", "month")) |>
  select(all_of(cfg$keep_vars))

model_fits = read_model_fit(filename = "Phoca_vitulina-v1-model_fits")
model_fits

nowcast = predict_stars(model_fits, present_conditions)
nowcast

plot_prediction(nowcast['default_maxent'])

pa_nowcast = threshold_prediction(nowcast)
plot_prediction(pa_nowcast['default_maxent'])

covars_rcp45_2075 = read_brickman(db |> filter(scenario == "RCP45", 
                                               year == 2075, 
                                               interval == "mon"),
                                  add = c("depth", "month")) |>
  select(all_of(cfg$keep_vars))

forecast_2075_45 = predict_stars(model_fits, covars_rcp45_2075)
forecast_2075_45

plot_prediction(forecast_2075_45['default_maxent'])

write_prediction(forecast_2075_45,
                 scientificname = cfg$scientificname,
                 version = cfg$version,
                 year = "2075",
                 scenario = "RCP45")
