require 'rubygems'
require 'dish'

movie = {
    movie: "contact",
    director: "robert zemeckis",
    favourite: true,
    actors: [
        { name: "judy foster", score: 10},
        { name: "matthew mcconaughey", score: 7},
        { name: "tom skerritt", score: 10},
     ]
 }

media = Dish(movie)
# p media.movie
p media.actors[0].name
p media.actors[1].name
p media.actors[1].score
p media.actors.length
p media.favourite?

