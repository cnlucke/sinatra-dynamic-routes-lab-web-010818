require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    "#{@phrase * @number.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = []
    @words << params[:word1]
    @words << params[:word2]
    @words << params[:word3]
    @words << params[:word4]
    @words << params[:word5]
    "#{@words.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1]
    @number2 = params[:number2]
    @operation = params[:operation]
    case @operation
    when "add"
      "#{@number1.to_i + @number2.to_i}"
    when "subtract"
      "#{@number1.to_i - @number2.to_i}"
    when "multiply"
      "#{@number1.to_i * @number2.to_i}"
    when "divide"
      "#{@number1.to_i / @number2.to_i}"
    else
      status = 400
    end
  end
end
