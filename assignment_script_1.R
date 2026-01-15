Fratercula = fetch_obis(scientificname = "Fratercula arctica") |>
  +     print()
summary(Fratercula)
count(Fratercula, basisOfRecord)
count(Fratercula, month)
ggplot(data = Fratercula,                                # create the object
       +        mapping = aes(x = month)) +                 # specify month along x-axis
  +     geom_bar() +                                     # request a barplot
  +     labs(title = "Monthly Fratercula arctica observations")   # add a title
ggplot(data = Fratercula,                                # create the object
         +        mapping = aes(x = year)) +                  # specify year along x-axis
  +     geom_bar() +                                     # request a barplot
  +     labs(title = "Yearly Fratercula arctica observations")    # add a title
> coast = read_coastline()
> ggplot(data = Fratercula) +                  # create the plot
  +     geom_sf(alpha = 0.1, size = 0.7) +   # add the points
  +     geom_sf(data = coast,                # add the coast
                +             col = "orange") +
  +     facet_wrap(~month)                   # make a montage by month
> ggplot(data = Fratercula,                                # create the object
         +        mapping = aes(x = year)) +                  # specify year along x-axis
  +     geom_bar() +                                     # request a barplot
  +     labs(title = "Yearly Fratercula arctica observations")    # add a title
> ggplot(data = Fratercula) +       # create a plot object
  +     geom_sf(alpha = 0.1,      # add the points with some tweaking of appearance
                +             size = 0.7) +  
  +     geom_sf(data = coast,     # add the coastline
                +             col = "orange")
coast = read_coastline()
ggplot(data = Fratercula) +                  # create the plot
  +     geom_sf(alpha = 0.1, size = 0.7) +   # add the points
  +     geom_sf(data = coast,                # add the coast
                +             col = "orange") +
  +     facet_wrap(~month)                   # make a montage by month
Fratercula = Fratercula |>
  +     filter(!is.na(eventDate))
summary(Fratercula)
