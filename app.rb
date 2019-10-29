require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/' do 
    "Hello World!!"
  end

  get '/reversename/:name' do 
    @name = params[:name]  
    "#{@name.reverse!}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @mod_phrase = ''
    @number.times {@mod_phrase += @phrase} 
    @mod_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @combined_s = params[:word1]  + ' ' + params[:word2]  + ' ' + params[:word3]  + ' ' + params[:word4] + ' ' + params[:word5] + '.'
    "#{@combined_s}"
  end

  get '/:operation/:number1/:number2' do 

    case params[:operation]
    when 'add'
      "#{params[:number1].to_i + params[:number2].to_i}"
    when 'subtract'
      "#{params[:number1].to_i - params[:number2].to_i}"
    when 'multiply'
      "#{params[:number1].to_i * params[:number2].to_i}"
    when 'divide'
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
   
  end
end