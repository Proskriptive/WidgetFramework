###widget 1 module


widget1_UI <- function(id, overview_name = "") {
  ns <- NS(id)
  tagList(infoBox(title = "Widget 1",subtitle = ""))
}