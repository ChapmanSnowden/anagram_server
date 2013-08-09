get '/' do
  erb :index
end

get '/:word' do
  @word = params[:word]
  
  @anagrams = Word.find_anagram(@word)
  erb :index
end

post '/' do
  redirect "/#{params[:word]}" 
end
