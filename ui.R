shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Find your Body Mass Index (BMI)"),
                sidebarPanel(
                        img(src="fit-people.jpg",height=500,width=700),
                        br(),
                        br(),
                        p('The BMI ranges are based on the relationship between body weight and disease and death.'),
                        p('Overweight and obese individuals are at increased risk of many diseases and health conditions, including the following:                        
                        hypertension,
                        dyslipidemia, 
                        type 2 diabetes,
                        coronary heart disease,
                        stroke,
                        gallbladder disease,
                        osteoarthritis,
                        sleep apnea and respiratory problems, and
                        at least ten cancers (including endometrial, breast, and colon).'),
                        h4('Enter your height in metres and weight in kilogrammes in the boxes below.'),
                        numericInput('height', 'Height metres', 1.6, min = 0.8, max = 2.5, step = 0.1),
                        numericInput('weight', 'Weight kgs', 65, min = 25, max = 150, step = 1),
                        submitButton('Submit')                        
                ),
                mainPanel(
                        h4('You entered your height as:'),
                        verbatimTextOutput("inputheight"),
                        h4('and your weight as:'),
                        verbatimTextOutput("inputweight"),
                        h4('which gives you a BMI of: '),
                        verbatimTextOutput("prediction"),
                        h4('How healthy is your weight?'),
                        img(src="bmi-status-metric.png",height=500,width=700)
                )
        )
)

