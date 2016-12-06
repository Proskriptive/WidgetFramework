###widget Dev Help module


table_design_UI <- function(id, overview_name = "") {
  ns <- NS(id)
  tagList(title = "Table - Simple" ,
          fluidRow(box(
            title = "Simple Table",
            img(src = 'widgets/Box_with_embeded_table.png')
          )),
          fluidRow(box(
            title = "Scoring Table",
            img(src = 'widgets/Table_With_Graphical_Scores.png')
          )))
}