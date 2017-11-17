class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    # returns an array of all movies
    @@all
  end

  def watchlistings
    WatchListing.all.select{ |wl|
      wl.movie == self
    }
    # returns an array of all the watchlist objects that contain that movie
  end

  def viewers

    self.watchlistings.collect{|wl|
      wl.viewer
    }
    # returns all of the viewers who added this movie to their watchlist
  end

  def average_rating
    ratings = self.watchlistings.collect{|wl|
      wl.rating
    }

    ratings.inject{ |sum, el| sum + el }.to_f / ratings.size
    # returns the average of all ratings across all viewers watchlist ratings
  end

  def highest_rated

    # should return the movie with the highest average rating across all the viewers watchlistings
  end

end
