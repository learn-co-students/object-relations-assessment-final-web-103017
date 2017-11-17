require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

dan = Viewer.new("Dan")
melissa = Viewer.new("Melissa")

star_wars = Movie.new("Star Wars")
lebowski = Movie.new("The Big Lebowski")
clerks = Movie.new("Clerks")

movie_array = [clerks, lebowski]
movie_array2 = [star_wars, clerks]

new_wl = dan.add_to_watchlist(movie_array)
new_wl2 = melissa.add_to_watchlist(movie_array)





Pry.start
