require 'dinosaurus'
require 'pp'

big_huge_labs_thesaurus_key = '796a30c6c6014ddb925d076cf7c3a4b1'

Dinosaurus.configure do |config|
    config.api_key = big_huge_labs_thesaurus_key
  end

# pp results = Dinosaurus.lookup('dog')
pp res1 = Dinosaurus.synonyms_of('trial')

