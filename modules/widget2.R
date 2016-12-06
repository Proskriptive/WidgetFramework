###widget 2 module


widget2_UI <- function(id, overview_name = "") {
  ns <- NS(id)
  tagList(infoBox(title = "Widget 2",subtitle = ""))
}