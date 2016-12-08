#Set rconnect


rsconnect::setAccountInfo(name='proskriptive',
                          token='52FF6208AE4C26254B0C2BF935990B31',
                          secret='3eTUnQxJkSgqqbLySRyqWEJe2rasdVm+DoR9U0o/')



#Once the rsconnect package has been configured, you're ready to deploy your first application. If you haven't written any applications yet, you can also checkout the Getting Started Guide for instructions on how to deploy our demo application. Run the following code in your R console.

library(rsconnect)
rsconnect::deployApp('/data01/development/Proskriptive/WidgetFramework/')