library(dplyr)
library(sparkline)
library(formattable)

mtcars %>%
  group_by(cyl) %>%
  summarise(
    hp = spk_chr(
      hp, type="box",
      chartRangeMin=0, chartRangeMax=max(mtcars$hp)
    ),
    mpg = spk_chr(
      mpg, type="box",
      chartRangeMin=0, chartRangeMax=max(mtcars$mpg)
    )
  ) %>%
  formattable() %>%
  formattable::as.htmlwidget() %>%
  spk_add_deps()




library(sparkline)
library(formattable)

fw <- as.htmlwidget(
  formattable(
    data.frame(
      id = c("a", "b"),
      sparkline = c(
        spk_chr(runif(10,0,10), type="bar"),
        spk_chr(runif(10,0,5), type="bar")
      ),
      stringsAsFactors = FALSE
    )
  )
)
 




library(sparkline)

sl1 <- sparkline(
  c(5,4,5,-2,0,3),
  type='bar',
  barColor="#aaf",
  chartRangeMin=-5,
  chartRangeMax=10,
  # set an id that will make it easier to refer
  #  in the next sparkline
  elementId="sparkline-for-composite"
)

sl2 <- sparkline(
  c(4,1,5,7,9,9,8,7,6,6,4,7,8,4,3,2,2,5,6,7),
  type="line",width = 200,height = 100,
  fillColor = FALSE,
  lineColor ='red',
  chartRangeMin = -5,
  chartRangeMax = 10
)
sl2

# add sparkline as a composite
spk_composite(sl1, sl2)

# add values and options as a composite
spk_composite(
  sl1,
  values=c(4,1,5,7,9,9,8,7,6,6,4,7,8,4,3,2,2,5,6,7),
  options = list(
    type="line",
    fillColor = FALSE,
    lineColor ='red',
    chartRangeMin = -5,
    chartRangeMax = 10
  )
)

# add combination of sparkline and options as a composite
spk_composite(
  sl1,
  sl2,
  options = list(
    type="box"
  )
)



products <- data.frame(id = 1:5, 
                       price = c(10, 15, 12, 8, 9),
                       rating = c(5, 4, 4, 3, 4),
                       market_share = percent(c(0.1, 0.12, 0.05, 0.03, 0.14)),
                       revenue = accounting(c(55000, 36400, 12000, -25000, 98100)),
                       profit = accounting(c(25300, 11500, -8200, -46000, 65000)))
products
sign_formatter <- formatter("span", 
                           style = x ~ style(color = ifelse(x > 0, "green", 
                                                            ifelse(x < 0, "red", "black"))))
sign_formatter(c(-1, 0, 1))
formattable(products, list(profit = sign_formatter))
formattable(products)

formattable(products, list(
  price = color_tile("transparent", "lightblue"),
  rating = color_bar("lightgreen"),
  market_share = color_bar("lightblue"),
  revenue = sign_formatter,
  profit = sign_formatter))

as.datatable(formattable(products, list(
  price = color_tile("transparent", "blue"),
  revenue = sign_formatter,
  profit = sign_formatter)))
