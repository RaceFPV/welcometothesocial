# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

boards = [
  {
    name: %q[Serious],
    description: %q[Serious news, world events, and matters]
  },
  {
    name: %q[Funny],
    description: %q[Make em laugh, funny guy!]
    },
  {
    name: %q[Lounge],
    description: %q[Relax and shoot the sh*t with your fellow .Sociallites]
    },
  {
    name: %q[Memetastic],
    description: %q[Doge don't give a crap, such wow]
    },
  {
    name: %q[Ask Social],
    description: %q[Ask and ye shall receive... answers]
    }
]

pbar = ProgressBar.create( title: 'Seed initial boards', total: boards.count, format: '%a |%b>>%i| %p%% %t [%c/%C done]')
boards.each do |board|
  Board.create board
  pbar.increment
end