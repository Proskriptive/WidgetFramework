###widget Dev Help module


widget_dev_help_UI <- function(id, overview_name = "") {
  ns <- NS(id)
  tagList(tabBox(
    title = "Help",
    width = 12,
    
    tabPanel(title = "Introduction" ,
             fluidRow(infoBox(
               title = "Help", subtitle = ""
             ))),
    tabPanel(title = "Widget 1" ,
             fluidRow(box(
               title = "Widget 1", subtitle = "",
               img(src='widgets/kpi_metrics_box_with_numeric_header.png')
             )))
    
  ))
}