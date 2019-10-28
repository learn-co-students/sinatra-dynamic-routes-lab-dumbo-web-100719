require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name_reversed = @name.reverse
    "#{@name_reversed}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared_number = @number * @number
    "#{@squared_number}"
  end

  get '/say/:number/:phrase' do 
    # @num = params[:number].to_i
    # @phrase = params[:phrase]
    # @num.times do
    #  puts "#{@phrase}"
    # end
    many_phrases = ''
    params[:number].to_i.times do 
      many_phrases += params[:phrase]
    end
    many_phrases
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    
    answer = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      answer = (num1 + num2).to_s
    when 'subtract'
      answer = (num1 - num2).to_s
    when 'multiply'
      answer = (num1 * num2).to_s
    when 'divide' 
      answer = (num1 / num2).to_s
    end 
  end

end