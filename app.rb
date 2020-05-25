require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name].to_s
    backwards = @user_name.reverse
    "#{backwards}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @sqrnum = @number ** 2
    "#{@sqrnum}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    erb :say
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
  end
  
  get '/:operation/:number1/:number2' do
  end

end