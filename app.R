## app.R ##
library(shinydashboard)
library(png)


               
  ## Sidebar content
sidebar<-dashboardSidebar(
  sidebarSearchForm(textId = "searchText", buttonId = "searchButton",
                    label = "Search..."),
    sidebarMenu(
      menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
      menuItem("Widgets", tabName = "widgets", icon = icon("th"))
    )
  )
  
  ## Body content
body<-dashboardBody(


  fluidRow(
    box(status = "success",title = "Ishan Pathak(20C22042)", "Bio:-
        2nd year student, of B.tech(CSE AI) in SOCSET"),
    box(status = "primary", title="CGPA","8.5")
  ),
  fluidRow(
    tabBox(
      title = "Year 1",
      # The id lets us use input$tabset1 on the server to find the current tab
      id = "tabset1", height = "250px",
      tabPanel("Semester-1", 
               includeHTML("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/ishanpathak.html"),
               includeCSS("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/tablemarksishan.css")
      ),
      tabPanel("Semester-2", 
               includeHTML("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/ishanpathak2.html"),
               includeCSS("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/tablemarksishan.css")
      )

    ),
    tabBox(
      title = "Year 2",
      # The id lets us use input$tabset1 on the server to find the current tab
      id = "tabset1", height = "250px",
      tabPanel("Semester-3", 
               includeHTML("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/ishanpathak3.html"),
               includeCSS("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/tablemarksishan.css")
      ),
      tabPanel("Semester-4", 
               includeHTML("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/ishanpathak4.html"),
               includeCSS("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/tablemarksishan.css")
      ),
      
    )
    
  
),
fluidRow(
  tabBox(height = "250px",
     tabPanel("Additional Achievements","Had Participated in GCP 2021, also took part in 
                      solana Bengaluru Hacker House 22, Spring ChainLink hackathon 22,won Technophilia 
                      competition in SVIT Prakarsh Competiton, I Like Frontend Development and rightnow working with
              some of the startups and companies to have practical knowledge about a UI/UX designing, also fascinated by the cryptoworld
              getting into NFTs and Web3 and DAO"),
     tabPanel("Upload Fee reciepts",
              fileInput("file", label = h3("File input"))
     ),
  ),
  tabBox(height = "250px",
         tabPanel("QR Code(Connect Me)",
                  tags$img(src="linkimage.png",height="200px",width="220px")),
      
         tabPanel("Prediction",
                  "Probability of getting placed in On Campus Placemnet:-79.174%")
)
),

  
  fluidRow(
    box(
      width = 4, background = "black",
      "SEM 3"
    ),
    box(
      title = "CET 1", width = 4, solidHeader = TRUE, status = "primary",
      "Average-23.5"
    ),
    box(
      title = "CET 2", width = 4, solidHeader = TRUE,status = "primary",
      "24.5"
    ),
    box(
      title = "SGPA", width = 4, solidHeader = TRUE, status = "warning",
      "8.4"
    )
  ),

  fluidRow(
    box(
      width = 4, background = "black",
      "SEM 4"
    ),
    box(
      title = "CET 1", width = 4, solidHeader = TRUE, status = "primary",
      "Average-25.5"
    ),
    box(
      title = "CET 2", width = 4, solidHeader = TRUE,status = "primary",
      "Average-24.5"
    ),
    box(
      title = "SGPA", width = 4, solidHeader = TRUE, status = "warning",
      "Exam Still pending"
    )
  ),

    
  
    
              fluidRow(
                box(plotOutput("histishan", height = 250)),
              
                  box(plotOutput("scatteishan", height = 250))
                
                
              ),
      
      
     

    
fluidRow(
  box(status = "success",title = "Vedant Shah(20C22050)", "Bio:-
        2nd year student, of B.tech(CSE AI) in SOCSET"),
  box(status = "primary", title="CGPA","8.4")
),
fluidRow(
  tabBox(
    title = "Year 1",
    # The id lets us use input$tabset1 on the server to find the current tab
    id = "tabset1", height = "250px",
    tabPanel("Semester-1", 
             includeHTML("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/vedantshah.html"),
             includeCSS("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/tablemarksishan.css")
    ),
    tabPanel("Semester-2", 
             includeHTML("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/vedantshah2.html"),
             includeCSS("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/tablemarksishan.css")
    )
    
  ),
  tabBox(
    title = "Year 2",
    # The id lets us use input$tabset1 on the server to find the current tab
    id = "tabset1", height = "250px",
    tabPanel("Semester-3", 
             includeHTML("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/vedantshah3.html"),
             includeCSS("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/tablemarksishan.css")
    ),
    tabPanel("Semester-4", 
             includeHTML("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/vedantshah4.html"),
             includeCSS("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/tablemarksishan.css")
    ),
    
  )
),
fluidRow(
  tabBox(height = "250px",
         tabPanel("Additional Achievements","Had Participated in GCP 2021, also took part in 
                      solana Bengaluru Hacker House 22, Spring ChainLink hackathon 22,won Technophilia 
                      competition in SVIT Prakarsh Competiton, I Like Frontend Development and rightnow working with
              some of the startups and companies to have practical knowledge about a UI/UX designing, also fascinated by the cryptoworld
              getting into NFTs and Web3 and DAO"),
         tabPanel("Upload Fee reciepts",
                  fileInput("file", label = h3("File input"))
         ),
  ),
  tabBox(height = "250px",
         tabPanel("QR Code(Connect Me)",
                  tags$img(src="vedantshah1.png",height="200px",width="200px")),
         
         tabPanel("Prediction",
                  "Probability of getting placed in On Campus Placemnet:-76.846%")
  )


),

fluidRow(
  box(
    width = 4, background = "black",
    "SEM 3"
  ),
  box(
    title = "CET 1", width = 4, solidHeader = TRUE, status = "primary",
    "Average-23.5"
  ),
  box(
    title = "CET 2", width = 4, solidHeader = TRUE,status = "primary",
    "24.75"
  ),
  box(
    title = "SGPA", width = 4, solidHeader = TRUE, status = "warning",
    "8.4"
  )
),
fluidRow(
  box(
    width = 4, background = "black",
    "SEM 4"
  ),
  box(
    title = "CET 1", width = 4, solidHeader = TRUE, status = "primary",
    "Average-21.25"
  ),
  box(
    title = "CET 2", width = 4, solidHeader = TRUE,status = "primary",
    "Still not Anounced"
  ),
  box(
    title = "SGPA", width = 4, solidHeader = TRUE, status = "warning",
    "Exam Still pending"
  )
),
fluidRow(
  box(plotOutput("histvedant", height = 250)),
  
  box(plotOutput("scattevedant", height = 250))
  
  
),



fluidRow(
  box(status = "success",title = "Dhara Patel(20C22050)", "Bio:-
        2nd year student, of B.tech(CSE AI) in SOCSET"),
  box(status = "primary", title="CGPA","9.05")
),
fluidRow(
  tabBox(
    title = "Year 1",
    # The id lets us use input$tabset1 on the server to find the current tab
    id = "tabset1", height = "250px",
    tabPanel("Semester-1", 
             includeHTML("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/dharapatel.html"),
             includeCSS("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/tablemarksishan.css")
    ),
    tabPanel("Semester-2", 
             includeHTML("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/dharapatel2.html"),
             includeCSS("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/tablemarksishan.css")
    )
    
  ),

  tabBox(
    title = "Year 2",
    # The id lets us use input$tabset1 on the server to find the current tab
    id = "tabset1", height = "250px",
    tabPanel("Semester-3", 
             includeHTML("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/dharapatel3.html"),
             includeCSS("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/tablemarksishan.css")
    ),
    tabPanel("Semester-4", 
             includeHTML("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/dharapatel4.html"),
             includeCSS("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/tablemarksishan.css")
    ),
    
  )
),
fluidRow(
  tabBox(height = "250px",
         tabPanel("Additional Achievements","Had Participated in GCP 2021, also took part in 
                      solana Bengaluru Hacker House 22, Spring ChainLink hackathon 22,won Technophilia 
                      competition in SVIT Prakarsh Competiton, I Like Frontend Development and rightnow working with
              some of the startups and companies to have practical knowledge about a UI/UX designing, also fascinated by the cryptoworld
              getting into NFTs and Web3 and DAO"),
         tabPanel("Upload Fee reciepts",
                  fileInput("file", label = h3("File input"))
         ),
  ),
  tabBox(height = "250px",
         tabPanel("QR Code(Connect Me)",
                  tags$img(src="dharapatel1.png",height="200px",width="220px")),
         
         tabPanel("Prediction",
                  "Probability of getting placed in On Campus Placemnet:-96.14%")
  )
),



fluidRow(
  box(
    width = 4, background = "black",
    "SEM 3"
  ),
  box(
    title = "CET 1", width = 4, solidHeader = TRUE, status = "primary",
    "Average-28.5"
  ),
  box(
    title = "CET 2", width = 4, solidHeader = TRUE,status = "primary",
    "29"
  ),
  box(
    title = "SGPA", width = 4, solidHeader = TRUE, status = "warning",
    "9.05"
  )
),
fluidRow(
  box(
    width = 4, background = "black",
    "SEM 4"
  ),
  box(
    title = "CET 1", width = 4, solidHeader = TRUE, status = "primary",
    "Average-27"
  ),
  box(
    title = "CET 2", width = 4, solidHeader = TRUE,status = "primary",
    "Still not Anounced"
  ),
  box(
    title = "SGPA", width = 4, solidHeader = TRUE, status = "warning",
    "Exam Still pending"
  )
),
fluidRow(
  box(plotOutput("histdhara", height = 250)),
  
  box(plotOutput("scattedhara", height = 250))
  
  
),
fluidRow(
  box(status = "success",title = "Dhara Patel(20C22050)", "Bio:-
        2nd year student, of B.tech(CSE AI) in SOCSET"),
  box(status = "primary", title="CGPA","9.05")
),
fluidRow(
  tabBox(
    title = "Year 1",
    # The id lets us use input$tabset1 on the server to find the current tab
    id = "tabset1", height = "250px",
    tabPanel("Semester-1", 
             includeHTML("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/virajajani.html"),
             includeCSS("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/tablemarksishan.css")
    ),
    tabPanel("Semester-2", 
             includeHTML("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/virajajani2.html"),
             includeCSS("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/tablemarksishan.css")
    )
    
  ),
  tabBox(
    title = "Year 2",
    # The id lets us use input$tabset1 on the server to find the current tab
    id = "tabset1", height = "250px",
    tabPanel("Semester-3", 
             includeHTML("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/virajajani3.html"),
             includeCSS("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/tablemarksishan.css")
    ),
    tabPanel("Semester-4", 
             includeHTML("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/virajajani4.html"),
             includeCSS("/Users/ishanpathak/Desktop/Rsdhinyproject/finalprojectshiny/tablemarksishan.css")
    ),
    
  )
),
fluidRow(
  tabBox(height = "250px",
         tabPanel("Additional Achievements","Had Participated in GCP 2021, also took part in 
                      solana Bengaluru Hacker House 22, Spring ChainLink hackathon 22,won Technophilia 
                      competition in SVIT Prakarsh Competiton, I Like Frontend Development and rightnow working with
              some of the startups and companies to have practical knowledge about a UI/UX designing, also fascinated by the cryptoworld
              getting into NFTs and Web3 and DAO"),
         tabPanel("Upload Fee reciepts",
                  fileInput("file", label = h3("File input"))
         ),
  ),
  tabBox(height = "250px",
         tabPanel("QR Code(Connect Me)",
                  tags$img(src="linkimage.png",height="200px",width="220px")),
         
         tabPanel("Prediction",
                  "Probability of getting placed in On Campus Placemnet:-67.531%")
  )
),


fluidRow(
  box(
    width = 4, background = "black",
    "SEM 3"
  ),
  box(
    title = "CET 1", width = 4, solidHeader = TRUE, status = "primary",
    "Average-18.5"
  ),
  box(
    title = "CET 2", width = 4, solidHeader = TRUE,status = "primary",
    "20"
  ),
  box(
    title = "SGPA", width = 4, solidHeader = TRUE, status = "warning",
    "7.8"
  )
),
fluidRow(
  box(
    width = 4, background = "black",
    "SEM 4"
  ),
  box(
    title = "CET 1", width = 4, solidHeader = TRUE, status = "primary",
    "Average-21"
  ),
  box(
    title = "CET 2", width = 4, solidHeader = TRUE,status = "primary",
    "Still not Anounced"
  ),
  box(
    title = "SGPA", width = 4, solidHeader = TRUE, status = "warning",
    "Exam Still pending"
  )
),
fluidRow(
  box(plotOutput("histviraj", height = 250)),
  
  box(plotOutput("scatteviraj", height = 250))
  
  
),
tabItems(
  tabItem(tabName = "widgets",
          h2("Overview Of RShiny Work Shop"),
          br(),
          h4("We Students of second year of B.tech CSE(AI) were introduced to this new tool of R Shiny Web App UI which helped us to
             see how we can use this tool to Provide the great UI and Functionality to represent and use the data in the way which can 
             help us to improve our life style"),
          br(),
          h4("We would like to thank our class co-ordinator and also the faculty Mrs. Archana Magare of our workshop who helped and pushed us to learn a one 
             more new skill to add in the Skill set."),
          br(),
          br(),
          h3("ITM Student Profile "),
          br(),
          h4("This project is mainly made for helping the students of ITM university and faculty to have the Student Data at 
             one place and also in a unified manner, we have also used many and important features of Shiny web package like for structuring the 
             data used fluid row and for showing the result we have used tabbox and tabpanekl, we have also added the QR code feature to make it easy
             for any company to hire the Student, It will also provide the data (probability) of getting placed in the campus,We(Ishan, Dhara,Vedant and Viraj
             students of 2'nd Year B.tech Student are hoping that it can help the fellow students of ITM,We also see this tool for other people to use 
             and help others , That's why we have opensourced on the Github you can have all the files on the github.com/IshanPathak1 's repositry, use it by forking it,
             Thank You,")
  )
)

)


title<-tags$a(href='https://www.google.com',
              tags$img(src="images.png",height="50",width="100"),
              'ITM Student Profile')
ui<-dashboardPage( skin = "purple",
  header <- dashboardHeader( 
    title = title,titleWidth = 600,
    
    dropdownMenu(type = "notifications", badgeStatus = "warning",
                 notificationItem(icon = icon("warning"), status = "info",
                                  "Marks are updated"
                 ),
                 notificationItem(icon = icon("warning"), status = "danger",
                                  "Your marks are less then last year"
                 ),
                 notificationItem(icon = icon("warning"),
                                  status = "danger","CGPA is decreasing"
                 ),
                 notificationItem(icon = icon("user", lib = "glyphicon"),
                                  status = "success", "Enrollnment no. Updated"
                 )
    ),
    
    
    dropdownMenu(type = "messages", badgeStatus = "success",
                 messageItem("Support Team",
                             "This is the content of a message.",
                             time = "5 mins"
                 ),
                 messageItem("Support Team",
                             "This is the content of another message.",
                             time = "2 hours"
                 ),
                 messageItem("New User",
                             "Can I get some help?",
                             time = "Today"
                 )
    )
),
  
  
  sidebar,
  body
)  



server <- function(input, output) {


  output$histishan<-renderPlot({
    y<-Ishan$Ishan
    x<-Ishan$Marks
    hist(x,10,xlab="Marks",ylab="Exam",main="Histogram of perfomance")
  })
  output$scatteishan<-renderPlot({
    y<-Ishan$Ishan
    x<-Ishan$Marks
    plot(x,xlab="Marks",ylab="Exam",main="Scatter plot of perfomance")
  })
  output$histvedant<-renderPlot({
    y<-Vedant$Ishan
    x<-Vedant$Marks
    hist(x,10,xlab="Marks",ylab="Exam",main="Histogram of perfomance")
  })
  output$scattevedant<-renderPlot({
    y<-Vedant$Ishan
    x<-Vedant$Marks
    plot(x,xlab="Marks",ylab="Exam",main="Scatter plot of perfomance")
  })
  output$histdhara<-renderPlot({
    y<-Dhara$Ishan
    x<-Dhara$Marks
    hist(x,10,xlab="Marks",ylab="Exam",main="Histogram of perfomance")
  })
  output$scattedhara<-renderPlot({
    y<-Dhara$Ishan
    x<-Dhara$Marks
    plot(x,xlab="Marks",ylab="Exam",main="Scatter plot of perfomance")
  })
  output$histviraj<-renderPlot({
    y<-Viraj$Ishan
    x<-Viraj$Marks
    hist(x,10,xlab="Marks",ylab="Exam",main="Histogram of perfomance")
  })
  output$scatteviraj<-renderPlot({
    y<-Viraj$Ishan
    x<-Viraj$Marks
    plot(x,xlab="Marks",ylab="Exam",main="Scatter plot of perfomance")
  })
  output$value <- renderPrint({
    str(input$file)
  })
  output$value <- renderPrint({ input$text })
  output$value <- renderPrint({ input$text1 })
  
}

shinyApp(ui, server)
