require_relative 'config/environment'
require "pry"

class App < Sinatra::Base
  
  get "/reversename/:name" do
  "#{params[:name].reverse}"
  end

  get "/square/:number" do
    "#{params[:number].to_i * params[:number].to_i}" 
  end

  get "/say/:number/:phrase" do 
  
    "#{params[:phrase] * params[:number].to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."

  end

  get '/:operation/:number1/:number2' do

    first_number=params[:number1].to_i

    second_number=params[:number2].to_i

    if params[:operation]== "subtract"
      "#{first_number - second_number}"

    elsif params[:operation]== "add"
      "#{first_number + second_number}"

    elsif params[:operation]== "multiply"
      "#{first_number * second_number}"

    elsif params[:operation]== "divide"
      "#{first_number / second_number}"
    end 

  end
  
end