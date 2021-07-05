require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

get '/reversename/:name' do
  name = params[:name]
  "#{name.reverse}"
end

get '/square/:number' do
  number= params[:number].to_i
  "#{number**2}"
end

get '/say/:number/:phrase' do
  n = params[:number].to_i
  phr= params[:phrase]
  "#{phr*n}"
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
str = [params[:word1],params[:word2],params[:word3], params[:word4],params[:word5]].join(" ")
"#{str +"."}"
end

get '/:operation/:number1/:number2' do
a = params[:number1].to_i
b = params[:number2].to_i
if params[:operation] == "add"
  "#{a+b}"
elsif params[:operation] == "subtract"
  "#{a-b}"
elsif params[:operation] == "multiply"
  "#{a*b}"
elsif params[:operation] == "divide"
  "#{a/b}"
else
  "error"
end
end

end