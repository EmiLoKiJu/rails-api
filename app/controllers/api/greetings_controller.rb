class Api::GreetingsController < ApplicationController
  def random
    random_greeting = Greeting.order('RANDOM()').first
    render json: { greeting: random_greeting&.value }
  end
end
