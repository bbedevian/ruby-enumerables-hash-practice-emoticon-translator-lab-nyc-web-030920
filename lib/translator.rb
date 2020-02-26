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
 japanese_emote = load_library(file_path)['get_emoticon'][emoticon]

if japanese_emote 
  return japanese_emote
else 
  return "Sorry, that emoticon was not found"
end

end

def get_english_meaning(file_path, emoticon)
  meaning = load_library(file_path)['get_meaning'][emoticon]
end