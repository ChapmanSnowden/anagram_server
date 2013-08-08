# require_relative '../app/models/word.rb'
# require_relative '../app/words.txt'

# filename = 'sinatra_skeleton/app/words.txt'

File.open('words', 'r').each_line do |line|
  Word.create(word: line.chop.downcase, sorted_letters: line.chop.downcase.split('').sort.join)
end

# File.open('words2', 'r').each_line do |line|
#   Word.create(word: line.chop)
# end