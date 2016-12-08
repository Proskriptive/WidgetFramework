###widget Dev Help module


measure_boxes_design_UI <- function(id, overview_name = "") {
  ns <- NS(id)
  tagList(fluidRow(fluidRow(
    box(
      title = "Measure Box - Tabular",
      subtitle = "",
      img(src = 'widgets/measure_box_tabular.png')
    )
  ),
  fluidRow((
    box(title = "Measure Box - Trending Plot",
        img(src = 'widgets/measure_box_trend_plot.png'))
  )),
  fluidRow((
    box(title = "Metric Boxes",
        img(src = 'widgets/metric_widgets.png'))
  ))
  
  ))
}

metric_boxes_UI <- function(id) {
  ns <- NS(id)
tagList(fluidRow(
  box(title = "Metric Value Boxes",status = "primary",solidHeader = TRUE,width = 5,
      valueBox("100%",color = "green",subtitle = "Great",icon = icon("check-circle-o")),
      valueBox("75%",color = "yellow",subtitle = "Alright",icon = icon("minus-circle-o"))  ,
      valueBox("75%",color = "red",subtitle = "Bad",icon = icon("times-circle-o"))  
  ),
  
  box(title = "Metric Info Boxes",status = "primary",solidHeader = TRUE,width = 5,
      infoBox(title = "100",color = "red",value = 100,icon = icon("times-circle-o"))
  )
      
  ))}