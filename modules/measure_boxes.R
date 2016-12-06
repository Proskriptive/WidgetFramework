###widget Dev Help module


measure_boxes_design_UI <- function(id, overview_name = "") {
  ns <- NS(id)
  tagList(
    
     fluidRow( 
      
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
               ))))
}