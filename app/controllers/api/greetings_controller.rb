class Api::GreetingsController < ApplicationController
  def index
    greeting = Greeting.find(rand(5) + 1)
    render json: { message: greeting.message }
  end
end