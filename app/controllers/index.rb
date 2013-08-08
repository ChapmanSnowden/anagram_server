get '/' do
  # @word = "No words yet"
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do
  @word = params[:word]
  @sorted_word = @word.downcase.split('').sort.join
  @matched = Word.where(sorted_letters: @sorted_word).map { |entry | entry.word }
  erb :index
end