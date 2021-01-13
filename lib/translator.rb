require "yaml"
file = "emoticons.yml"

def load_library(file)
        readFile = YAML.load_file(file)
        newHashFile = {}
        readFile.each do |key, value|
            # newHashFile = {key => {"English" => value[0], "Japanese" => value[1]}}
            tempHash = {"english" => value[0], "japanese" => value[1]}
            newHashFile.store(key, tempHash)
        end
        return newHashFile
  end