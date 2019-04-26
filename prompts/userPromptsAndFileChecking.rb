module Prompts_and_file_checking

  # Welcome To App Message
  def welcome_window()
    font = TTY::Font.new(:doom)
    welcome_message1 = font.write("Welcome  To", letter_spacing: 3)
    welcome_message2 = font.write("Article  Checker", letter_spacing: 3)
    puts Paint[welcome_message1, :green, :bright]
    puts Paint[welcome_message2, :green, :bright]
  end

# Prompt user for a file they would like the app to use as input
  def prompt_user_for_input_file_path()
    prompt_user_file_path = "Please input the file path of the file you would like to have checked. File name must include its extension name."
    puts Paint[prompt_user_file_path, :blue, :bright]
  end

# Check file path exist. Prompt user for a correct file path
  def check_file_path_exist(file_path)
    while (File.exist?(file_path)!=true)
      puts Paint["File path or file name does not exist or has not been provided correctly. \nPlease re-enter your path and file name (notice extension name must be provided).", :red, :bright]
      file_path = gets().chomp()
    end
    real_file_path = file_path
  end

# Check file's extension is .txt. Prompt user for correct file type
  def check_file_ext_is_txt(user_file_path)
    f_ext_type = File.extname(user_file_path)
    while (f_ext_type != ".txt")
      puts Paint["File path or name is not accepted. Please make sure you only check pure text file. \nThe extension name must be '.txt'.  Other file type is not allowed. \nRe-enter your text file name.", :red, :bright]
      user_file_path = gets().chomp()
      f_ext_type = File.extname(user_file_path)
    end
    puts Paint["Your file has been accepted", :green, :bright]
    user_file_path
  end

  # prompt user for input to name a file they'd like to data to be stored in
  def prompt_user_to_name_save_file()
    prompt_user_to_name_output_file = "Input a name of your choice for the resulting data to be stored"
    puts Paint[prompt_user_to_name_output_file, :blue, :bright]
    output_file_name = gets.chomp
  end

  # Save resulted output
  def save_res_csv(output_hash)
    output_file_name = prompt_user_to_name_save_file()
    until (File.extname(output_file_name) == "")
      puts Paint["Please do not include an extension in the name of the file. The file will be output will be stored/saved in a csv file for you. \nPlease input a file name", :red, :bright]
        output_file_name = gets.chomp
    end
    CSV.open(output_file_name + ".csv", "ab") do |csv| 
      output_hash.to_a.each do |elem| 
          csv << elem 
      end
    end
    puts Paint["Your Output File Has been created for you '#{output_file_name}.csv'. It is in the same directory you opened this program in.", :green, :bright]
  end

  def exit_message()
    font = TTY::Font.new(:doom)
    sleep(5)
    exit_message1 = font.write("Thank  You  For  Using", letter_spacing: 2)
    sleep(2)
    exit_message2 = font.write("Article  Checker", letter_spacing: 3)
    puts Paint[exit_message1, :green, :bright]
    puts Paint[exit_message2, :green, :bright]
  end
  
end