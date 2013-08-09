class Word < ActiveRecord::Base 



  def self.find_anagram(word)
    Word.where(canonical_representation: create_canon(word))
  end

  private

  def self.create_canon(word)
    word_canon = word.downcase.split('').sort.join
  end
end


    #canon by downcasing, splitting, sorting concat,
    #find all canons in db that have similar letters,
    # return associated words
