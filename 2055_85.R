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

covars_rcp85_2055 = read_brickman(db |> filter(scenario == "RCP85", 
                                               year == 2055, 
                                               interval == "mon"),
                                  add = c("depth", "month")) |>
  select(all_of(cfg$keep_vars))

forecast_2055_85 = predict_stars(model_fits, covars_rcp85_2055)
forecast_2055_85

plot_prediction(forecast_2055_85['default_maxent'])

write_prediction(forecast_2055_85,
                 scientificname = cfg$scientificname,
                 version = cfg$version,
                 year = "2055",
                 scenario = "RCP85")