require 'csv'
require 'paint'
require 'tty-font'
require 'artii'
require_relative './prompts/userPromptsAndFileChecking.rb'
require_relative './textProcessing/textProcessing.rb'
require_relative './spellcheckerFeature/spellcheck.rb'
include Prompts_and_file_checking
include TextProcessing
include Spellchecker

welcome_window() 

prompt_user_for_input_file_path()
file_path = gets().chomp()

real_file_path = check_file_path_exist(file_path)

checked_user_file_path = check_file_ext_is_txt(real_file_path)

input_file = File.read(checked_user_file_path)
arr_of_cleaned_text = clean_text(input_file)

arr_of_cleaned_downcased_text = downcase_text_arr(arr_of_cleaned_text)

keywords_vals_hash = count_times_keywords_are_used(arr_of_cleaned_downcased_text)
print keywords_vals_hash

puts "\n" * 4

sorted_hash = sort_vals_high_to_low(keywords_vals_hash)
print sorted_hash, "\n"

save_res_csv(sorted_hash)

spellcheck_file(arr_of_cleaned_text)

exit_message()