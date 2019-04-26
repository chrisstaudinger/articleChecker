require 'csv'
require 'paint'
require 'tty-font'
# require 'APIProcesses.rb'
require 'pry'


# Welcome To App Message
def welcome_window()
  font = TTY::Font.new(:doom)
  welcome_message1 = font.write("Welcome  To", letter_spacing: 3)
  welcome_message2 = font.write("Article  Checker", letter_spacing: 3)
  puts Paint[welcome_message1, :green, :bright]
  puts Paint[welcome_message2, :green, :bright]
end

welcome_window() 

# Prompt user for a file they would like the app to use as input
def prompt_user_for_input_file_path()
  prompt_user_file_path = "Please input the file path of the file you would like to have checked. File name must include its extension name."
  puts Paint[prompt_user_file_path, :blue, :bright]
end
prompt_user_for_input_file_path()
file_path = gets().chomp()

# Check file path exist. Prompt user for a correct file path
def check_file_path_exist(file_path)
  while (File.exist?(file_path)!=true)
    puts Paint["File path or file name does not exist or has not been provided correctly. 
Please re-enter your path and file name (notice extension name must be provided).", :red, :bright]
    file_path = gets().chomp()
  end
  file_path
end

check_file_path_exist(file_path)

# Check file's extension is .txt. Prompt user for correct file type
def check_file_ext_is_txt(user_file_path)
  f_ext_type = File.extname(user_file_path)
  while (f_ext_type != ".txt")
    puts Paint["""File path or name is not accepted. Please make sure you only check pure text file. 
The extension name must be '.txt'.  Other file type is not allowed.
Re-enter your text file name.""", :red, :bright]
    user_file_path = gets().chomp()
    f_ext_type = File.extname(user_file_path)
  end
  user_file_path
end

checked_user_file_path = check_file_ext_is_txt(file_path)
puts Paint["SUCCESS", :green, :bright]

#### cleans imported text
def clean_text(str)
  str.scan /(?<=^|[^a-z])[a-z](?:[a-z'\d]*[a-z])?(?:[a-z-\d]*[a-z])?/i
end

input_file = File.read(checked_user_file_path)
arr_of_cleaned_text = clean_text(input_file)


## Downcase Cleaned Text Array
def downcase_text_arr(text_arr)
  arr_of_cleaned_downcased_text = []
  text_arr.each do |word|
    arr_of_cleaned_downcased_text << word.downcase()
  end
  arr_of_cleaned_downcased_text
end

arr_of_cleaned_downcased_text = downcase_text_arr(arr_of_cleaned_text)


def count_times_keywords_are_used(arr)
  res_hash = {}
  arrindex = 0
  while (arrindex < arr.length)
    k = arr.count{|x| x == arr[arrindex]}
    res_hash[arr[arrindex]] = k
    arrindex +=1
  end
  res_hash
end

keywords_vals_hash = count_times_keywords_are_used(arr_of_cleaned_downcased_text)
print keywords_vals_hash

puts "\n" * 4


# sort values from highest to lowest
def sort_vals_high_to_low(hash)
  result = hash.sort_by {|key, value| value}.reverse.to_h
end

sorted_hash = sort_vals_high_to_low(keywords_vals_hash)
print sorted_hash

# prompt user for input to name a file they'd like to data to be stored in
def prompt_user_to_name_save_file()
  prompt_user_to_name_output_file = "Input a name of your choice for the resulting data to be stored"
  puts Paint[prompt_user_to_name_output_file, :blue, :bright]
  output_file_name = gets.chomp
end

# Save resulted output
def save_res_csv(output_hash)
  output_file_name = prompt_user_to_name_save_file()
    CSV.open(output_file_name + ".csv", "ab") do |csv| 
        output_hash.to_a.each do |elem| 
            csv << elem
    end 
  end
end

save_res_csv(sorted_hash)

