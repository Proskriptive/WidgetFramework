
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)


shinyServer(function(input, output) {

  callModule(design_markdown,id = 'table_design', markdown_file_path = "design_documents/table_design.html")
  callModule(table_sparklines,id ='table_spark_line')
})
