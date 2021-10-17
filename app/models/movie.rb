class Movie < ActiveRecord::Base
  def self.all_ratings
    Movie.pluck(:rating).uniq
  end
  def self.with_ratings(ratings_list)
  # if ratings_list is an array such as ['G', 'PG', 'R'], retrieve all
  #  movies with those ratings
  # if ratings_list is nil, retrieve ALL movies
    if ratings_list.empty?
      return Movie.all
    else
      Movie.where(:rating => ratings_list)
    end
  end
end
