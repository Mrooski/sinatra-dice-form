require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end


get("/process_roll") do
  @rolls = params.fetch("dice").to_i
  @sides = params.fetch("sides").to_i

  @result = []

  @rolls.times do
    die = rand(1..@sides)

    @result.push(die)
  end
  erb(:rolls)
end
