require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end


  post '/piglatinize' do
    string = params[:user_phrase]
    @result = PigLatinizer.new.to_pig_latin(string)
    erb :pig_latin
  end

end
