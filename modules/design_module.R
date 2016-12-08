#design_module
#This module allows you to integrate R Markdown files into your Shiny App
library(markdown)
library(knitr)
#UI Module.  This displays a simple version of the markdown file
design_markdown_UI <- function(id, label = "Module Name") {
  ns <- NS(id)
  tagList(
    tags$style(
      HTML(paste("#shiny-tab-",id," { height: 90vh; overflow-y: auto; }
             ",sep=""))
    ),
     column(width = 12,fluidRow(
    # box(
    #  
    #   
    #   
    #   width = 12,
    #   status = "primary",
    #   
    #   solidHeader = TRUE,
    #   height = '1200px',
      h1(label),
      
      uiOutput(ns("design_document"))
        )
     )
  )
  
  
  
}


design_markdown <-
  function(input,
           output,
           session,
           markdown_file_path,
           doc_type = "html") {
    # The selected file, if any
    output$design_document  <- renderUI({
      if (doc_type == 'html') {
        includeHTML(markdown_file_path)
      } else {
        HTML(markdown::markdownToHTML(knit(markdown_file_path, quiet = TRUE)))
      }
    })
    
    
    output$markdown <- renderUI({
      tags$iframe(HTML(markdown::markdownToHTML(
        knit(markdown_file_path, quiet = TRUE)
      )))
    })
    output$html <- renderUI({
      includeHTML(markdown_file_path)
    })
    
    
  }