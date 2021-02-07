require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse = params[:name].to_s.reverse
    p "#{@reverse}" 
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    p "#{@square}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase].to_s * params[:number].to_i
    p "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @all = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    p "#{@all}" 
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      result = (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == "subtract"
      result = (params[:number1].to_i - params[:number2].to_i).to_s
    elsif params[:operation] == "multiply"
      result = (params[:number1].to_i * params[:number2].to_i).to_s
    elsif params[:operation] == "divide"
      result = (params[:number1].to_i/params[:number2].to_i).to_s
    end

    p "#{result}"

  end

end