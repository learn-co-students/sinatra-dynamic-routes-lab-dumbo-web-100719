require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    "#{@phrase * @number.to_i}"
  end

  get '/say/:word_1/:word_2/:word_3/:word_4/:word_5' do
    @word_1 = params[:word_1]
    @word_2 = params[:word_2]
    @word_3 = params[:word_3]
    @word_4 = params[:word_4]
    @word_5 = params[:word_5]
    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end

  get '/:operation/:number_1/:number_2' do
    @operation = params[:operation]
    @number_1 = params[:number_1]
    @number_2 = params[:number_2].to_i

  

    case @operation
    when "add"
      "#{@number_1.to_i + @number_2.to_i}"
      # binding.pry
    when "subtract"
      "#{@number_1.to_i - @number_2.to_i}"
    when "multiply"
      "#{@number_1.to_i * @number_2.to_i}"
    when "divide"
      "#{@number_1.to_i / @number_2.to_i}"
    end
  end
end