###widget Dev Help module


box_extension_design_UI <- function(id, overview_name = "") {
  ns <- NS(id)
  tagList(
          fluidRow(
            box(
              title = "Vertical Scrolling Box",
              subtitle = "",
              img(src = 'widgets/scrollable_box_with_components.png')
            )
          ) 
            
          )
}