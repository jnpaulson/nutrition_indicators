library(shiny)

mw_nutrition = read.csv("../Malawi/mwi_nutrition.csv")
mw_ant  = read.csv("../Malawi/mwi_anthropometry.csv")
mw_dat  = merge(mw_ant,mw_nutrition,by="hhid")

shinyUI(
  navbarPage(
    titlePanel(
      tags$div(class="header", checked=NA,
        a(href="http://www.bread.org/","Nutrition"),
        tags$small(p("Use this interactive tool to look at a countries nutrition."))
      )
    ),
    tabPanel("Malawi",
    sidebarLayout(position="right",
      sidebarPanel(
        selectInput("mx_var","Select a nutrition variable",colnames(mw_dat),colnames(mw_dat)[70]),
        selectInput("my_var","Select a nutrition variable",colnames(mw_dat),colnames(mw_dat)[5])
      ),
      mainPanel(
        plotOutput("mplot"),
	textOutput("text")
      )
    )
  )
 )
)
