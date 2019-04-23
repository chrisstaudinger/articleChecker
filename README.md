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
