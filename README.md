# Terminal App: Article Checker
A tool to help any writer, running in the Bash command line written in Ruby.

## Contributors
### Brian Jian Zhao, Christopher Staudinger<br/>

#### Link
https://github.com/chrisstaudinger/articleChecker

## Purpose 

Article Checker is designed to be a tool for anyone who is writting an important piece of text and wants to have it checked over to see where it can be improved. The app counts and reports times of occurence for each word within a text file. It also spell-checks each word and make recommendations for correcting the wrong spelling.   

### Functionality

Within the app's scope as an MVP functionality includes:  
1. Enable users to pass any text file they want to check to machine by specifying text file path (word count is however limited to 500 per text file).
2. The app analyses repetitions of each word and output the analysis result to a CSV file (eg. "word A, 5")
3. The app checks spelling of each word and recommends correct spelling and the result is output as a CSV file (eg. "wrrd, suggestion:word")
4. User can give any name to the CSV files that store analysis and save CSV files to anywhere in machine based on their own preference. 
5. Built-in error handling procedures to ensure that: 
    a. the file to be checked exists and file path is correct
    b. the type of file to be checked is .txt only.
Dependencies (only covered by Linda Lai template, not sure this is a requirement from rubric)
The Ruby gems 'paint','tty-font', 'net/http' and 'json' are required to run myMDb.
Article Checker returns spelling-cheking data from the Bing Spell Check API (free limit is capped at 5,000 transactions).

## Dependencies

The Ruby gems 'paint', 'artii','tty-font','net/http'and 'dinosaurus' are required to run Article Checker.

API token expires on 01.05.2019. After this date a new token will need to be obtain from [Microsoft Azure](https://azure.microsoft.com/en-gb/try/cognitive-services/?api=text-analytics "Microsoft Azure API").


## Instructions for Use

Open Terminal or preferred console. To initialise the program enter:
```
$ bundle install
```

To initialise the program enter:
```
$ ruby main.rb
```
<!-- ![photo](https://github.com/chrisstaudinger/articleChecker/blob/master/Images/Screen%20Shot%202019-04-23%20at%2012.55.21%20pm.png) -->

![photo](https://github.com/chrisstaudinger/articleChecker/blob/master/Images/Screen%20Shot%202019-04-26%20at%207.06.59%20pm.png?raw=true)

* After you see the welcome message, you need to provide the file path and file name for your text file. The file name needs to include its extension name.
* If the file path is not provided correctly, the file does not exist or the file extension is not .txt. Error message will appear. And you will be asked to re-enter a file path.
![photo](https://github.com/chrisstaudinger/articleChecker/blob/master/Images/Error%20Handling%20User%20Input.png?raw=true)
* If the file path and name are provided as required, the program proceeds to enable user to specify the path and file name for the output (csv file)
* Similarly, if the file path or name are not provided as required. The program will continue to ask for the right file path and name.
Pic
* If the csv file is successfully created. The program will give a user prompt that indicates 'the csv file has been successfully created'.

## Future Enhancements

* Integration of the Synonym functionality that had not finished implementing.
* Cleaner output of the spellchecking feature by only outputting the mispelled words.
* Audio track for those that are visually impaired.
* Ability for users to search parameters and return 
  * Defintion
  * Synonyms & antonyms
  * Spelling
  * Examples of the word in a sentence
* Acceptance of a wider range of file types
* Ability for the user to choose a file using their GUI



### Accessibility
* Users with a hearing disability will have no problem using this app
* Users with a visual impairment should be able to increase text size and change the font and background colour depending on the terminal program they wish to use, we also recommend a command line screen reader to be used.
* The user will also need to interact with a keyboard to use this app. For those that are visually impaired, we recommend using a large print keyboard or a braille keyboard sticker.
* Future versions of this app will include an audio track for those that are visually impaired.
 

### Potential issues
#### Moral and Ethical
* Using the synonym feature that will be included in the future version of the app could potentially alter facts or direct quotes included in the user's article.
#### Legal
* Considering the situation mentioned above, the user may be deemed responsible for any false claims stated in their article.
#### Cultural and Racial
* This app was originally built for english-speaking users which poses an issue in itself.
* Feature versions of the app will have the ability to detect other languages as well, though we are not in the position to ensure that the synonym feature of this app will work appropriately for those languages and so this is another issue that will arise.
#### Social and Political
* An incorrect use of a word that was suggested by our synonym feature may cause quotes to be politically incorrect.


## Brainstroming

A text editor was used for the initial brainstorming of app ideas. There was discussion of each idea about the limitations, difficulties, extendability, API integration and so on. From here 8 ideas were shortlisted.

Article Checker was the idea chosen and the planning out of building the app continued on Trello from there. 

![photo](https://github.com/chrisstaudinger/articleChecker/blob/master/Images/Brainstorming.png?raw=true)

## Task Management
We utilised Trello as our task management software allowing us to define the features, workflow and logic for a minimum viable product. Moreover, we broke down features and itemised tasks to be performed. We also utilised the descriptions and comments on tasks that we broke down, making it very clear what was going on. With Trello workflow was done in a very systematic and organised manner.

![photo](https://github.com/chrisstaudinger/articleChecker/blob/master/Images/Trello%20Task%20Management%20Workflow.png?raw=true)
![photo](https://github.com/chrisstaudinger/articleChecker/blob/master/Images/Trello%202.png?raw=true)
![photo](https://github.com/chrisstaudinger/articleChecker/blob/master/Images/Trello%203.png?raw=true)


### User stories
* As a blogger, I want to be able to spell check my article so that my blog posts look professional.
* As a writer, I want to make sure that I don't use the same words too often so that my book doesn't sound repetitive. 
* As a PhD student, I want to make sure I use a wide range of verbs and adjectives so that my thesis sounds more intelligent.
* As a keynote speaker, I want to have a clear idea of the words I'm using the most, how often the words are used and how many unique word I have so that my speech is intriguing
* As an employee, I want to make sure the emails I write are properly spell checked to avoid embarrassment. 

## Project plan

We started with a simple idea to have a simple text checking tool.
For the MVP version of the software, the only feature we envisaged at the beginning was informing users how many times they had used the same words in their article. Extra features discussed at the planning and scoping stages includes providing synonym to reduce the wordiness of the writing if a word appears too many times, spell-checking the article/essay and suggesting the correct spelling.

The following plan for time allocation was determined in the morning of Day1:
<br/>Day 1 determined what features would be available to the MVP and an improved product in the future. Complete the coding for MVP.
<br/>Day 2 solve the problems left by day 1 for MVP and attempt to add the extra features 
<br/>Day 3 finalise the features of the app and improve the UI/UX for the software and complete the documentation and user guide. 

![photo](https://github.com/chrisstaudinger/articleChecker/blob/master/Images/Project%20Plan%20&%20Timeline.png?raw=true)

We utlitised Whiteboards as supplment to Trello for the following:
1.  List each day's target.
2.  Summarise progress each day.
3.  Layout to-do list or next steps
4.  Drop down all the problems encountered, matched with key words of solution
*  Result visioning: use white board to show how the final result is presented in the csv file.

## Description of Overall App Design, Considerations & Choices

__Userflow & Userstories__ were the leading concepts as we intiated building out the app. 

![photo](https://github.com/chrisstaudinger/articleChecker/blob/master/Images/user-flow.png?raw=true)

After designing the user flow we then fleshed it all out using Trello. Breaking down features into their respective code blocks was a very strong focus, prioritising the MVP tasks.

### Clean, Reusable & Scalable

__Clean Code__ was a very strong focus of our app. In the 2-3day timeframe that was given we sacrificed a bit speed to complete some of extended features to instead refactor and write clean code. 

__Modules__ We had a large focus on keeping the code base 'DRY'. The app was broken down into multiple files. All code where appropriate was referenced in methods and parsed into modules. Classes and objects weren't utilised as it did not make sense to use them in this apps current version. 

__Methods & Testing__ The app heavily focused on methods inlcuding regex. Comprehensive amounts of testing were conducted throughtout the entire build.

___


