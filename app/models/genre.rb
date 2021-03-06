class Genre < ActiveRecord::Base
  include Slugifiable::SlugInstance
  extend Slugifiable::SlugClass

  has_many :song_genres
  has_many :songs, :through => :song_genres
  has_many :artists, :through => :songs

end
