require 'pry'

alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']

#open the file and store in array
array = File.read("./p022_names.txt").split(",").map(&:strip)
#get rid of the extra quotes and sort alphabetically
arr = array.map do |word|
  word.gsub('"','')
end.sort
#initialize the total sum to 0
total = 0

#get the value of each name
#multiple the value of name by the index +1 of that name
#and add it to the sum
arr.each do |name|
name_total = 0
name_arr = name.split("")
  name_arr.each do |letter|
    position = alphabet.index(letter) + 1
    name_total = name_total + position
  end
  total = total + name_total * (arr.index(name) + 1)
end
puts total