require 'yaml' 

def load_library(file_path)
  
emoticons = YAML.load_file(file_path)

result = {
  'get_meaning' => {},
  'get_emoticon' => {} 
}

emoticons.each do |key, value| 
  result['get_meaning'][value[1]] = key #japanese key, meaning value 
  result['get_emoticon'][value[0]] = emoticons[key][1] #english key, japanese value
  end 
  
  result
end

def get_japanese_emoticon(file_path, emoticon) #takes english emote, return japanese

emoticon.each do |emoticon|
  load_library(file_path)

if result['get_emoticons'].find .... 
  return emoticons[key]
else 
  return "Sorry, that emoticon was not found"
end 
end 
end

def get_english_meaning
  # code goes here
end