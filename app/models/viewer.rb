class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def add_to_watchlist(movies)
    movies.each do |movie|
      WatchListing.new(movie, self)
    end
  end

  def rate_movie(movie, rating)
    found_viewer = WatchListing.all.select { |instance| instance.viewer == self }
    found_movie = found_viewer.select { |instance| instance.movie == movie}
    found_movie.rating = rating
  end
  #given a movie on a viewer's watchlisting and a rating (a number between 1 and 5),
  # assign the rating to the movie. W
  #where should the rating that an individual viewer gives to an individual movie be stored?
end
