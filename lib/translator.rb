require "yaml"
file = "emoticons.yml"

  def load_library(file)
        readFile = YAML.load_file(file)
        
        newHashFile = {}

        readFile.each do |key, value|
            # newHashFile = {key => {"English" => value[0], "Japanese" => value[1]}}
            tempHash = {:english => value[0], :japanese => value[1]}
            newHashFile.store(key, tempHash)
        end
        newHashFile
  end

def get_english_meaning(file, str)
    readFile = load_library(file)
    result = ""
    readFile.each do |key, value|
      value.each do |subKey, subValue|
        if (subValue == str)
          result = key
        end
      end
    end
    # puts result.length
    if result.length < 1
      return "Sorry, that emoticon was not found"
    else
      return result
    end
end



def get_japanese_emoticon(file, str)
  readFile = load_library(file)
  result = "Sorry, that emoticon was not found"
  readFile.each do |key, value|
    value.each do |subKey, subValue|
      if (subValue.eql? str)
          result = value["Japanese"]
      end
    end
  end
  result
end

