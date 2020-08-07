# require modules here
require 'pry'
require 'yaml'

def load_library(path ='lib/emoticons.yml')
    library = YAML.load_file(path)
  # code goes here
  result = library.each_with_object({}) do |(key, value), hash|
    if !hash[key]
      hash[key] = {
        :english => value[0],
        :japanese => value[1]
      }
    end
  end
  result
end

def get_japanese_emoticon(library, english_emoticon)
  
<<<<<<< HEAD
  library = load_library(library)
  library.each do |value, meaning|
       if library[value][:english] == english_emoticon
         return library[value][:japanese]
   end
  end
  return "Sorry, that emoticon was not found" 
=======
  library = load_library(file)
  library.each do |value, meaning|
       if value[:english] == english_emoticon
         return meaning
   end
  end
>>>>>>> 5bda20d21a95ff96549301c7a30ea7d1e4728bb5
end

def get_english_meaning(library, japanese_emoticon)
 
<<<<<<< HEAD
  library = load_library(library)
   library.each do |value, meaning|
       if library[value][:japanese] == japanese_emoticon
         return value
      end
    end
    return "Sorry, that emoticon was not found" 
=======
  library = load_library(file)
   library.each do |value, meaning|
       if value[:japanese] == japanese_emoticon
         return meaning
      end
    end
>>>>>>> 5bda20d21a95ff96549301c7a30ea7d1e4728bb5
  end