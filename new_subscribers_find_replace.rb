#FILE_PATH = "C:\\Users\\us318457\\Desktop\\"
FILE_PATH = "I:\\Products\\QA\\Regression v2-5\\ENGSQLREF-5 ENGAGE Campaign - Creation Wizard\\"

#file_names = ["#{FILE_PATH}Eastman.txt"]
file_names = ["#{FILE_PATH}ENGSQLREF-66 0-000-009.txt", "#{FILE_PATH}ENGSQLREF-66A 0-000-009.txt"]
new_contents = ""

file_names.each do |file_name|
  File.readlines(file_name).each do |line|
    rand = "Qa" + Random.rand(100...999).to_s + "@questline.com"
    new_contents += line.gsub(/Qa\d*@questline.com/, rand)
  end

  #To merely print the contents of the file, use:
  puts new_contents

  File.open(file_name, "w") { |file| file.puts new_contents }
end

