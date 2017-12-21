library(shiny)
library(plotly)

# Define UI for application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Detecting the language of a text"),
  p("This app determines the language(s) that a text is probably written in,",
    "by comparing its words to the most frequent words of several languages"),
  p(em("Supported languages: Afrikaans (Afrikaans), Breton (brezhoneg),",
       "Bosnian (bosanski jezik), Catalan (català), Czech (čeština),",
       "Danish (dansk), German (Deutsch), English, Esperanto (Esperanto),",
       "Spanish (Español), Estonian (eesti), Basque (euskara),", 
       "Finnish (suomi), French (français), Galician (galego),", 
       "Croatian (hrvatski jezik), Hungarian (magyar),",
       "Indonesian (Bahasa Indonesia), Icelandic (Íslenska),",
       "Italian (Italiano), Lithuanian (lietuvių kalba),",
       "Latvian (latviešu valoda), Malay (bahasa Melayu),",
       "Dutch (Nederlands, Vlaams), Norwegian (Norsk),",
       "Polish (język polski), Portuguese (Português), Romanian (Română),",
       "Slovak (slovenčina), Slovene (slovenski jezik), Albanian (Shqip),",
       "Serbian (srpski), Swedish (svenska), Tagalog (Wikang Tagalog),",
       "and Turkish (Türkçe).")),
  p(strong("To get started, enter some text in the text box below (the",
           "longer the better),"), 
    "and (optionally) adjust the number of words of the target languages to",
    "use for the comparisons (the default should be fine, use less words for",
    "a faster but less accurate assessment, use more words for slower but",
    "finer comparisons)."),
  p(paste("You will then be able to select a language to visually compare the",
          "frequency of its most common words with the frequency of the words",
          "in the text.")),

  # Sidebar for user input
  sidebarLayout(
    sidebarPanel(
      textAreaInput("txt", "Text to detect the language of:", 
                    placeholder = "Enter some text here", height = 300),
      
       sliderInput("nWordsInCorpora",
                   "Number of words in corpora to use to detect language:",
                   min = 1,
                   max = 5000,
                   value = 500)
    ),
    
    # Application output
    mainPanel(
      h4("Detected language(s)"),
      textOutput("language"),
      h4("Highest language-matching scores"),
      plotlyOutput("scorePlot"),
      p("Click on a language bar in the graph above to compare the",
        "frequencies of the words in the text and in the corpus of",
        "the selected language."),
      h4("",
         ""),
      p(""),
      plotlyOutput(""),
      h4(""),
      p(""),
      p("",
        em(""), ""),
      plotlyOutput("")
    )
  )
))
