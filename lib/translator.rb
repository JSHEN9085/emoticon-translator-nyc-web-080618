# require modules here
require 'yaml'
require 'pry'

test = "lib/emoticons.yml"

def load_library(test)
  my_hash = {}
  data = YAML.load_file(test)
   my_hash["get_emoticon"] = {}
  my_hash["get_meaning"] = {}
  data.each do |key1,variable1|
    my_hash["get_emoticon"][variable1[0]] = variable1[1]
    my_hash["get_meaning"][variable1[1]] = key1
    #my_hash["get_emoticon"][]
  end
   return my_hash
end

def get_japanese_emoticon(test,entered_emoticon)
  my_hash = {}
  emoticon_hash = load_library(test)
   emoticon_hash.each do |key, value|
    value.each do |english_emoticon, jap_emoticon|
      my_hash = emoticon_hash["get_emoticon"][entered_emoticon]
    end
  end
  if my_hash
    return my_hash
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(test,entered_emoticon)
  my_hash = {}
   emoticon_hash = load_library(test)
   emoticon_hash.each do |get_meaning_or_value, english_emoticon|
    english_emoticon.each do |key1, value1|
      my_hash = emoticon_hash["get_meaning"][entered_emoticon]
      end
    end
   if my_hash
    return my_hash
  else
    return "Sorry, that emoticon was not found"
  end
end
