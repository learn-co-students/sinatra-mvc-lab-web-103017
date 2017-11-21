require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    orig = params[:user_phrase]
    @latinized = PigLatinizer.new.to_pig_latin(orig)
  end
end
