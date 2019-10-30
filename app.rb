require_relative 'config/environment'

class App < Sinatra::Base
   get '/reversename/:name' do  
      @revname = params[:name]
      "#{@revname}".reverse 
   end

   get '/square/:number' do
     @sqrnum = params[:number]
     sqr = @sqrnum.to_i * @sqrnum.to_i
     sqr.to_s
   end

   get '/say/:number/:phrase' do
     @num = params[:number]
     @phr = params[:phrase]
     "#{@phr}"*@num.to_i 
   end

   get '/say/:word1/:word2/:word3/:word4/:word5' do
      @w1 = params[:word1]
      @w2 = params[:word2]
      @w3 = params[:word3]
      @w4 = params[:word4]
      @w5 = params[:word5]
      "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
   end

   get '/:operation/:number1/:number2' do
      @oper = params[:operation]
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i

      if @oper == "add"
        "#{@num1 + @num2}"
      elsif @oper == "subtract"
        "#{@num1 - @num2}"
      elsif @oper == "multiply"
        "#{@num1 * @num2}"
      elsif @oper == "divide"
        "#{@num1 / @num2}"
      end

    end
      
  end
      