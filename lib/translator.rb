require 'yaml' 

def load_library(file_path)
  
emoticons = YAML.load_file(file_path)

result = {
  'get_meaning' => {},
  'get_emoticon' => {} 
}

# empticons.each do |key, value| #key is the meaning, values are the emotes [1 is japanese][0 is english]
#   result['get_meaning'][value[1]] = key 
#   result['get_emotion'][value[0]] = key 
#   end 
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end