library(shiny)

mw_nutrition = read.csv("../Malawi/mwi_nutrition.csv")
mw_ant  = read.csv("../Malawi/mwi_anthropometry.csv")
mw_dat  = merge(mw_ant,mw_nutrition,by="hhid")

shinyServer(function(input, output) {

    output$mplot <- renderPlot({
        y_var = input$my_var
        x_var = input$mx_var
        plot(mw_dat[,y_var]~mw_dat[,x_var],xlab=x_var,ylab=y_var,bty="l") 
    })

# output$boxplot <- renderPlot({
#  Define a single variable to create a contingency table or boxplot 
# }

    output$text<-renderText({
	# rbind codebooks
	# grab desc and display
        HTML("Information re: data")
    })

 })
