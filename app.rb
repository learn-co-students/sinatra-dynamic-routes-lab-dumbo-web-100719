require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end
  
  get '/square/:number' do
    @squared_num = params[:number].to_i * params[:number].to_i
    "#{@squared_num}"
  end

  get '/say/:number/:phrase' do
    response = ''
    params[:number].to_i.times do 
      response += params[:phrase]
    end
    response
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if params[:operation] == "add"
      "#{num1 + num2}"
    elsif params[:operation] == "subtract"
      "#{num1 - num2}"
    elsif params[:operation] == "multiply"
      "#{num1 * num2}"
    elsif params[:operation] == "divide"
      "#{num1 / num2}"
    end
  end

end