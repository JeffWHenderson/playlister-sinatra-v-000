class Genre < ActiveRecord::Base
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods

  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs #only connected to genre by join table
end
