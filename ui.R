

#This is the Integrated Testing unit.  Each widget will have its own app.

library(shiny)
library(shinydashboard)
library(shinyBS)
library(shinyjs)
library(mapview)
library(DT)
library(sparkline)
library(data.table)
library(reshape2)
library(dplyr)

source("./modules/widget1.R")
source("./modules/widget2.R")
source("./modules/widget3.R")
source("./modules/measure_boxes.R")
source("./modules/kpi__boxes.R")
source("./modules/tables.R")
source("./modules/box_extensions.R")

source("./modules/widget_dev_help.R")


sidebar <- dashboardSidebar(
  useShinyjs(),
  
  width = 350,
  sidebarSearchForm(
    textId = "searchText",
    buttonId = "searchButton",
    label = "Search..."
  ),
  
  
  ## Sidebar Menu ###########
  sidebarMenu(
    menuItem(
      "Measure Boxes",
      tabName = "measure_box",
      icon = icon("square"),
      
      menuSubItem("Design", tabName = "measure_box_design", icon = icon("cog")),
      menuSubItem("Measure Box Tabular", tabName = "measure_box_tabular"),
      menuSubItem("Measure Box Trending", tabName = "measure_box_trending"),
      menuSubItem("Measure Box -Value", tabName = "metric_boxes")
      
      
    ),
    menuItem(
      "Key Performance Indicator Boxes",
      tabName = "kpi_metric_box",
      icon = icon("square"),
      menuSubItem("Design", tabName = "kpi_metric_box_design", icon = icon("cog")),
      menuSubItem("KPI Metrics Box - Numeric", tabName = "kpi_metric_box_numeric"),
      menuSubItem("Measure Box Trending", tabName = "kpi_metric_box_trending"),
      menuSubItem("Metric Boxes", tabName = "metric_boxes")
      
      
    ),
    menuItem(
      "Box Extensions",
      tabName = "box_extensions",
      icon = icon("square"),
      menuSubItem("Design", tabName = "box_extension_design", icon = icon("cog")),
      menuSubItem("Vertical Scrolling Box", tabName = "box_extension_vertical_scrolling"),
      menuSubItem("Horizontal Scrolling Box", tabName = "box_extension_vertical_scrolling")
      
    ),
    menuItem(
      "Tables",
      tabName = "tables",
      icon = icon("table"),
      menuSubItem("Design", tabName = "table_design", icon = icon("cog")),
      menuSubItem("Simple Table", tabName = "table_simple"),
      menuSubItem("Scrolling Large Table", tabName = "table_large_scrolling"),
      menuSubItem("Table Spark Line", tabName = "table_spark_line")
      
    ),
    menuItem(
      "Drill Down Boxes",
      tabName = "drill_down_boxes",
      icon = icon("sort-desc"),
      menuSubItem("Design", icon = icon("cog"))
    ),
    menuItem(
      "Geo-Spatial Map",
      tabName = "geo_maps",
      icon = icon("map"),
      menuSubItem("Design", icon = icon("cog"))
    ),
    
    menuItem(
      "Access Control",
      tabName = "access",
      icon = icon("user-secret"),
      menuSubItem("Design", icon = icon("cog"))
    ),
    
    menuItem("Help", tabName = "widget_dev_help", icon = icon("question"),selected = TRUE),
    
    
    
    tags$img(
      src = "Logo_poweredby2016.png",
      align = "left",
      width = "300px",
      height = "45px",
      style = "
      position:absolute;
      bottom:0;
      width:100%;
      height:85px;
      color: white;
      padding: 20px;
      background-color: white;
      z-index: 1000;"
    )
    
    
    
    )
  
  
  )

## Body of the dashboard #####
body <-  dashboardBody(
  tags$head(tags$style(
    HTML(
      '
      .skin-purple .main-sidebar {
      background-color: #E8E8E5;
      }
      .skin-purple .sidebar-menu>li.active>a, .skin-blue .sidebar-menu>li:hover>a {
      background-color: #444444;
      }
      '
    )
    )),
  useShinyjs(),
  tags$style(
    type = "text/css",
    "#maps-site_map {height: calc(100vh - 150px) !important;}"
  ),
  tabItems(
    tabItem(tabName = "measure_box_design",
            measure_boxes_design_UI("measure_box_design")),
    tabItem(tabName = "kpi_metric_box_design",
            kpi_boxes_design_UI("kpi_metric_box_design")),
    tabItem(tabName = "metric_boxes",
            metric_boxes_UI("metric_boxes"),width=12),
    tabItem(tabName = "box_extension_design",  
            box_extension_design_UI('box_extension_design')) ,
    tabItem(tabName = "table_design",
            table_design_UI('table_design')) ,
    tabItem(tabName = "table_spark_line",
            table_sparklines_UI()),
    tabItem(tabName = "widget3",
            widget3_UI('widget3')),
    tabItem(tabName = "widget_dev_help",
            widget_dev_help_UI('widget_dev_help'))
  )
    )
## Dashboard Page UI #####
header <-
  dashboardHeader(
    title = tags$a(
      tags$img(src = 'Light_bulb_blue_orange.png'),
      "Provider Profiler",
      href = 'http://www.proskriptive.com',
      target = "_blank"
    ),
    
    titleWidth =   "350px",
    tags$li(class = "dropdown",
            tags$span("Widget:"))
  )
dp <- dashboardPage(skin = "black",
                    header = header,
                    sidebar,
                    body)
dp