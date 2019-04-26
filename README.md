# Terminal App: Article Checker
A tool to help any writer, running in the Bash command line written in Ruby.

## Contributors
### Brian Jian Zhao, Christopher Staudinger<br/>

#### Link
https://github.com/chrisstaudinger/articleChecker

## Purpose 

Article Checker is designed to be a tool for anyone who is writting an important piece of text and wants to have it checked over to see where it can be improved. The app counts and reports times of occurence for each word within a text file. It also spell-checks each word and make recommendations for correcting the wrong spelling.   

### Functionality

Within the app's scope as an MVP users have to ability to pass in their file of choice to the app.<br/><br/> The app will then provide the user feeback of all the words they have used and the amount of times each word has been used.<br/><br/> The app takes in user input to store the resulting output keyword occurences in a file of their choice. <br/><br/> Article Checker also provides the results of it's spell-checking in another file chosen by the user input.

## Dependencies



__MVP: This Terminal App will check through a text file and return the keywords and the amount of times each keyword has been used.__
__Extended Features: Search method which will return the amount of times the given parameter has been used__

(to be rewritten – includes full features chris may helps to improve the expressions I use)
Designed as an handy tool to help any person using computer to write, Article Checker counts and reports times of occurence for each word within a text file. It also spell-checks each word and make recommendations for correcting the wrong spelling.       
Functionality (to include more features and its descriptions)
1. Enable users to pass any text file they want to check to machine by specifying text file path (word count is however limited to 500 per text file).
2. The app analyses repetitions of each word and output the analysis result to a CSV file (eg. "word A, 5")
3. The app checks spelling of each word and recommends correct spelling and the result is output as a CSV file (eg. "wrrd, suggestion:word")
4. User can give any name to the CSV files that store analysis and save CSV files to anywhere in machine based on their own preference. 
5. Built-in error handling procedures to ensure that: 
    a. the file to be checked exists and file path is correct
    b. the type of file to be checked is .txt only.
Dependencies (only covered by Linda Lai template, not sure this is a requirement from rubric)
The Ruby gems 'paint','tty-font', 'net/http' and 'json' are required to run myMDb.
Article Checker returns spelling-cheking data from the Bing Spell Check API (free limit is capped at 5,000 transactions). Users need to generate an API key (free token expires in 7 days)from https://azure.microsoft.com/en-au/services/cognitive-services/spell-check/.
Bing Spell Check API
Instructions for Use
1. gem 'paint' and gem 'tty-font', both of which helps to format the user prompt text needs to be installed before you can run the program correctly.  
To install the required gems, enter: 
$ gem install paint
$ gem install tty-font
2. To call the program, enter:
$ ruby main.rb (or other name we give)
3.After you see the welcome message, you need to provide the file path and file name for your text file. The file name needs to include its extension name.
Pic placeholder
4. If the file path is not provided correctly, the file does not exist or the file extension is not .txt. Error message will appear. And the program will not run.
Pic placeholder
5. If the file path and name are provided as required, the program proceeds to enable user specify the path and file name for the output .csv file.
Pic
6. Similarly, if the file path or name are not provided as required. The program will continue to ask for the right file path and name.
Pic
7. If the csv file is successfully created. The program will give a user prompt that indicates 'the csv file has been successfully created'.
8. Consider add other user prompt in here
Screenshots to be provided
Accessibility:
User of this program shall be able to see all the user prompt of the program and is not visually impaired. He/she shall also be able to type and enter the characters into the computer using the regular daily keyboard. People with hearing disability will find no problem using this app.   
He/she shall, however, at least have a basic knowledge of using the file system of his OS. Knowing the concept of text file, file path and how to run a terminal and have latest version of ruby installed in his local machine. 
Potential legal, moral, ethical, cultural and safety issues
By downloading and using this app, you are deemed as having read all the documents we provide and agree to use this app per our instructions. 
The app shall not be used for any illegal purpose or in a way that contradicts the common interest of or value held by your community or people in your country. 
We are not responsible for any potential damage, loss of data, personal injury, mental problems or any negative consequence (physical or non-physical) on you or other third party resulted from using this program.
Possible social, political, cultural, racial, gender and international issues
The program and its instructions are written in Australian English. We do not have a plan to release non-english version of the program at the moment. However, we are open to opportunities to localise the program in your preferred area. If you are interested in helping us create a non-english version of the app. Please leave your email at the comment section below and we will contact you in due time.  
Designing and Planning (more work needs to be done on this part!)
Brainstorming & session evidence
We start with a simple idea that we want to have a simple text checking tool that can largely fulfill the text checking function of major commerical software such as Microsoft word and Open Office. 
For a MVP version of the software, the only feature we envisage at the beginning is informing users how many times he has used the same words in his article. Extra features discussed at the planning and scoping stages includes providing synonym to reduce the wordiness of the writing if a word appears too many times, spell-checking the article/essay and suggesting the correct spelling, letting user search for the words of his concern and tell him how many times it appears in the article, and counting the verbs in different tense.
Project plan
The following plan for time allocation is determined at Day 1 morning:
Day 1 determine what features that will be available to MVP and an improved product in the future. Complete the coding for MVP.
Day 2 solve the problems left by day 1 for MVP and attempt to add the extra features 
Day 3 finalise the features of the app and improve the UI/UX for the software and complete the documentation and user guide. 
# to be completed
brainstorming1
brainstorming2
brainstorming3
brainstorming
Task Management
Trello allowed us to define the features, flow and logic for a minimum viable product, breakdown and itemise current tasks to be performed and scope out future enhancements or challenges to overcome, in a much more organised and systematic manner.
Screenshot placeholder?
Whiteboard:
1.  List each day's target.
2.  Summarise progress each day.
3.  Layout to-do list or next steps
4.  Drop down all the problems encountered, matched with key words of solution
5.  Result visioning: use white board to show how the final result is presented in the csv file.
Screenshot placeholder？
Project Timeline
Day 1 
Morning is spent on developing a basic desription for each part of program flow for MVP. The end result is shown as below:
      show pic of whiteboard or trello
Afternoon is about actual code writing. The part we spent most of time is to find the right way to remove all non-alphanumeric characters in any text and write code to store result in CSV and output it in a readable format.
show pic of whiteboard or trello
other parts of providing user prompt or utilising gems to format the prompt message is less of a challenge. 
At the end of day 1, the MVP is already completed and uploaded to github.
      show pic of whiteboard or trello
Day 2 
We decided to enhance the MVP by adding two features: spell-checking and synonym suggestions. It becomes obvious that we need to rely and use external API to help us achieve this two features. We spend the morning time to what is the suitable API to use, how to interact with the API and retrieve the data from API call (in JSON file). Finally, we choose bing spell check and oxford dictionary API. 
show pic of whiteboard or trello
In the afternoon, We started to add API code into our MVP. We are lucky enough to have our spell-check API work almost at the first try. But for synonym suggestion API, we are yet to find a way to make it interact smoothly with our code. The rest of the day is spent on refactoring code, creating handling error code for file path or file name.
show pic of whiteboard or trello
Day 3 Solve all the remain problems. Produce the documentation for the program and improve the UI/UX of the app.
show pic of whiteboard or trello
Program flow and coding logic
MVP 
The program starts with welcome message, which has been coloured and formatted using two gems. 
Then the program takes in the user input for file path. The two following while loops check whether the file path and file name exist and whether type of file to be checked is .txt. 
After the string from the text file is passed to the machine, a method is used to clean the string (i.e. replace all the non-alphanumerical character with space ' '.)
Then every word within this string is stored as an individual element of an array.
Then the .count method for array is called to count how many times each element appears in this array. By nesting the array index within a while loop, .count method will loop through the whole array and count for each element within the array (i.e all the words within the cleaned string). After that, each word from the cleaned string is converted to the key to a hash and the counting result of its occurence is stored as the value in that hash.
Next step is to prompt the user to provide output file path and file name
Finally, the code is written in such a way that the hash will be converted back to an array. Relying on the do loop, the program takes in every word along with its count number in that array and append them into a CSV file and output the result to local machine.
Extended features:
1. spell check
Bing spell check API is called using the code provided by Microsoft with params 'mkt' set to en-uk (meaning British english). The returned JSON file is parsed and converted into a hash. The result is a array called "flaggedTokens". Then the word incorrectly spelled and its suggested correct form is retrieved and output into the csv file. 
Challenges
1. Free and usable APIs are required for spell-checking and correct spelling and other. To correctly use the API that can achieve our purpose, we spend much time studying 
   how to call the API and interact with API, how to parse the JSON file, and retrieve the information from JSON and pass information to ruby code. Much of this information is beyond our coding kwonledge at this stage. Tremendous amount of time is spent on figuring the right way to use and API and get the result from APIs.
2. A lot of effort has been made in designing the content, format, and file type of output CSV file. Since our analysis result is stored in JSON file or ruby data structure, it    is challenging to retrieve data from these data from ruby structure and store them into CSV file and present them in a readable way to user.  
3. An error handling procedure to prompt user to provide the right path and file name is require for the program work correctly. Error handling deals with interacting with the file system of local machine, a topic that is not covered by the bootcamp course so far. 
Future Enhancements
1. Spelling-checking functions is limited by Bing Spell Check API to maximum of 500 words per text file. To remove this limit, the program needs to be intergrated with 
   Other API
2. If there is a hyphen in a compound word, the app treats the compound as many different word. This will cause a wrong count number given to any compound word.
3. There is no search function for this program. Ideally, the program shall count the word entered by user.
4. Counting functions can count different forms of verbs
Typical User scenario:
A student finishes his school essay. For some reasons, Microsoft word is running super slow /crashes on his/her computer and the student just want to have some quick checks on his writing without spending too much time figuring out what’s going wrong with Microsoft software. He/she then saves his word file into .txt format and runs this program and get the analysis result for his writing in CSV format. 
The CSV file can be viewed directly by windows notepad or opened by other CSV reader or database file reader if the student feel uncomfortable reading raw CSV file or want to do some further analysis beyond what we can provide in this app.   
Add Comment












# Terminal App Ideas

1. To do list
2. musicplayer (plays songs from genres)
3. alarm clock
4. journal (prints to a text file)
5. scraper (predecessor)
6. basic accounting software
7. Financial Planning Software
8. # Article Checker

### Article Checker Synopsis
__MVP: This Terminal App will check through a text file and return the keywords and the amount of times each keyword has been used.__
__Extended Features: Search method which will return the amount of times the given parameter has been used__

    * read of txt file. put analysis into csv (log, storage)
    * testing
    * csv module
    * search by first letter of word. extendability. regex
    * synonyms, api. dictionary .com or theasaurus.com or something
    * couple of user_stories. All things like this in READEME.md
    * screenshots and evidence of forethought etc in README.md; eg trello screenshots
    * presentation slides. very basic


input = "the dog, cat and tree went swimming. A shark ate them all!"


Algorathim process input

Return 
The = 1 
Dog, = 
Name = 1
Is = 2
Lucky = 2
A = 1


Search(lucky)



Return lucky = 2




### Read text file
```input_file = 'The fox, dog and cat jumps over the fence. The seal came along, test-word. and the seal fox dog'```
### Remove grammar from text
```cleaned_string = 'The fox dog and cat jumps over the fence The seal came along test-word and the seal fox dog'```
### Obtain indidual words from text and store as array values
``` Ruby
array = ['The' 'fox' 'dog' 'and'...]
unique_words = [...]
```
### Store each unique keyword as key in a hash and the value of each key to be how many times that keyword was used in text
```Ruby
results {
  'fox': 2,
  'dog': 3
}

results > results.csv
```





### Project documentation is to be compiled as a single markdown file namedREADME.md
### This file should contain:
* A link to your GitHub repository
* Ensure the repository (​repo​) is accessible by your Educators
* Description of the ​app​, including,
* Purpose○Functionality
* Instructions for use
* Screenshots
* Future enhancements
* Accessibility concerns
* Potential legal, moral, ethical, cultural and safety issues○Possible social, political, cultural, racial, gender andinternational issues
* Details of design & planning process including,
* Evidence of ​app​ idea brainstorming sessions
* User stories
* Project plan & timeline○Description of overall app design (classes, files, basic flow)
* Design considerations and choices
* Screenshots of Trello board(s)




