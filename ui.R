
#This is the Integrated Testing unit.  Each widget will have its own app.

library(shiny)
library(shinydashboard)
library(shinyBS)
library(shinyjs)
library(mapview)
library(DT)

source("./modules/widget1.R")
source("./modules/widget2.R")
source("./modules/widget3.R")
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
      "Widget 1",
      tabName = "widget1",
      icon = icon("stethoscope")
    ),
    menuItem(
      "Widget 2",
      tabName = "widget2",
      icon = icon("stethoscope")
    ),
    menuItem("Widget 3", tabName = "widget3", icon = icon("map")),
    menuItem("Help", tabName = "widget_dev_help", icon = icon("map")),
    
    
    
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
    tabItem(tabName = "widget1",
            widget1_UI('widget1')) ,
    tabItem(tabName = "widget2",
            widget2_UI('widget2')) ,
    tabItem(tabName = "widget3",
            widget3_UI('widget3')),
    tabItem(tabName = "widget_dev_help",
            widget_dev_help_UI('widget_dev_help')) )
    )
## Dashboard Page UI #####
header <-  dashboardHeader(title = tags$a(tags$img(src='Light_bulb_blue_orange.png'),"Provider Profiler",href='http://www.proskriptive.com',target="_blank"
),

titleWidth =   "350px",
tags$li(class = "dropdown",
        tags$span("Widget:")))
dp <- dashboardPage(skin = "black",
                    header = header,
                    sidebar,
                    body)
dp