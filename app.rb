require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get "/square/:number" do
    (params[:number].to_i**2).to_s
  end

  get "/say/:number/:phrase" do
    output = ""
    params[:number].to_i.times do
      output += "#{params[:phrase]}"
    end
    output
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    if operation == "add"
      (params[:number1].to_i + params[:number2].to_i).to_s
    elsif operation == "subtract"
      (params[:number1].to_i - params[:number2].to_i).to_s
    elsif operation == "multiply"
      (params[:number1].to_i * params[:number2].to_i).to_s
    elsif operation == "divide"
      (params[:number1].to_i / params[:number2].to_i).to_s
    end
  end

end