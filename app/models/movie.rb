class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def watchlistings
    found = WatchListing.all.select { |instance| instance.movie == self}
    found.select {|x| x.movie}
  end

  def viewers
    found = WatchListing.all.select { |instance| instance.movie == self}
    found.select {|x| x.viewer}
  end

  def average_rating
    found_movie = WatchListing.all.select { |instance| instance.movie == self}
    movies_ratings = found_movie.select { |x| x.rating }
    movies_ratings.inject { |accumulator, x| accumulator + x}
  end
  def self.highest_rated
    movies = WatchListing.all.select {|instance| instance.movie.sort{|a, b| a <=> b}.last}
  end
  ovie#watchlistings
    + returns an array of all the watchlist objects that contain that movie
  + Movie#viewers
    + returns all of the viewers who added this movie to their watchlist
  + Movie#average_rating
    + returns the average of all ratings across all viewers watchlist ratings
  + Movie.highest_rated
    + should return the movie with the highest average rating across all the viewers watchlistings
end
