require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_text = PigLatinizer.new
    @output = @pig_text.to_pig_latin(params[:user_phrase])
    erb :user_output
  end
end
