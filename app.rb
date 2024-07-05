require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end


get("/dice/:number_of_times/:number_of_sides") do
  @num_of_dice = params.fetch("number_of_times").to_i
  @num_of_sides = params.fetch("number_of_sides").to_i

  @rolls = []

  @num_of_dice.times do
    die = rand(1..@num_of_sides)

    @rolls.push(die)
  end

  erb(:flexible)
end
