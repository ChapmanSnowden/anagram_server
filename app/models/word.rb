class Word < ActiveRecord::Base

  def anagrams
  end
end
# Take each letter of passed-in word, and shovel into array
# Get length/size of array and sort
# Find words in dictionary with same number of letters
# Iterate through that list and shovel each character in each word into an array
# Sort that array
# Compare initial array to every other array, looking for equality. If equal,
# then return the original dictionary word. 


##1) passed-in-word.downcase.split('').sort
##1a) length = passed-in-word.split('').length

# ^^ Thought of that, and then asked ourselves if we can put the sorted word
# into the database itself to speed things up. 