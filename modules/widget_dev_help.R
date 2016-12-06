###widget Dev Help module


widget_dev_help_UI <- function(id, overview_name = "") {
  ns <- NS(id)
  tagList(
    tabBox(
      title = "Help",
      width = 12,
      
      tabPanel(title = "Information" ,
               fluidRow(
               box(
                 title = "Resources",
                 width = "12",
                 h2("RStudio Shiny Dashboard "),
                 
                 a("Shiny Dashboard Github", href = "https://github.com/rstudio/shinydashboard",target =
                     "_blank"),
                 h2("Admin LTE"),
                 
                 a("AdminLTE - Free Premium Admin control Panel Theme That Is Based On Bootstrap 3.x Github", href = "https://github.com/almasaeed2010/AdminLTE",target =
                     "_blank")
                 
               )))
      ,
      tabPanel(title = "Measure Boxes" ,
               fluidRow(
                 box(
                   title = "Measure Box - Tabular",
                   subtitle = "",
                   img(src = 'widgets/measure_box_tabular.png')
                 )
               ),
               fluidRow((
                 box(title = "Measure Box - Trending Plot",
                     img(src = 'widgets/measure_box_trend_plot.png'))
               ))),
      tabPanel(title = "Key Performance Indicator Boxes" ,
               fluidRow(
                 box(
                   title = "KPI Metrix Box - Numeric Header",
                   subtitle = "",
                   img(src = 'widgets/kpi_metrics_box_with_numeric_header.png')
                 )
               ),
               fluidRow(
                 box(
                   title = "KPI Metrix Box - Star Header",
                   subtitle = "",
                   img(src = 'widgets/kpi_metric_box_with_stars.png')
                 )
                 
               )),
      tabPanel(title = "Table - Simple" ,
               fluidRow(box(
                 title = "Simple Table",
                 img(src = 'widgets/Box_with_embeded_table.png')
               ))),
      tabPanel(title = "Table - Scoring" ,
               fluidRow(
                 box(
                   title = "Table with Graphical Scoring",
                   img(src = 'widgets/Table_With_Graphical_Scores.png')
                 )
               )),
      
      tabPanel(title = "Scrolling Boxes" ,
               fluidRow(
                 box(
                   title = "Vertical Scrolling Box",
                   img(src = 'widgets/scrollable_box_with_components.png')
                   
                 )
               ),
               fluidRow(
                 a("Source", href = "http://spartanideas.msu.edu/2015/07/25/shiny-hack-vertical-scrollbar/", target =
                     "_blank")
               ))
    )
  )
}