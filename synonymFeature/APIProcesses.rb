require 'httparty'
require 'json'
# require 'requests'
require 'oxford_dictionary'
require 'bronto'
require 'dinosaurus'
require 'pp'

# response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

# app_id = "<2c79556e>"
# app_key = "<16c3bc805074c02e529c75f67ab7a3bd>"

# endpoint = "thesaurus"
# language_code = "en-us"
# word_id = "example"

# headers = {
#     "app_id" => app_id, 
#     "app_key" => app_key
# }

# url = "https://od-api.oxforddictionaries.com/api/v2/" + endpoint + "/" + language_code + "/" + word_id.downcase()

# r = HTTParty.get(url, :headers => headers)

# puts r.body, r.code, r.message, r.headers.inspect

# client = OxfordDictionary::Client.new(app_id: '2c79556e', app_key: '16c3bc805074c02e529c75f67ab7a3bd')
# client = OxfordDictionary.new(app_id: '2c79556e', app_key: '16c3bc805074c02e529c75f67ab7a3bd')

# entry = client.entry('dog')
# print entry
# puts
# print something.methods
# puts
# print first_lexical_entry = entry.lexical_entries[0]
# puts
# # puts thesaurus_entry = entry.thesaurus
# print examples = client.entry_examples('explain')

# something = client.entry_antonyms_synonyms('monotonous')
# print something
# puts

# pp synonyms = Bronto::Thesaurus.new.lookup("boring")
# Dinosaurus.configure do |config|
#     config.api_key = 'djksfhjk'
#   end

big_huge_labs_thesaurus_key = '796a30c6c6014ddb925d076cf7c3a4b1'

Dinosaurus.configure do |config|
    config.api_key = big_huge_labs_thesaurus_key
  end

# pp results = Dinosaurus.lookup('dog')
pp res1 = Dinosaurus.synonyms_of('trial')

