class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, through: :song_genre
  has_many :artists, through: :songs #only connected to genre by join table
end
