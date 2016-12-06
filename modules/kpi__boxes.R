###widget Dev Help module


kpi_boxes_design_UI <- function(id, overview_name = "") {
  ns <- NS(id)
  tagList(
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
            
          ))
}