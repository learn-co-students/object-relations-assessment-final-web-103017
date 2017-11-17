class WatchListing
  attr_accessor :viewer, :movie, :rating

  @@all = []

  def initialize(viewer, movie, rating=5)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all << self
  end

  def self.all
    # returns all of watchlistings
    @@all
  end
end
