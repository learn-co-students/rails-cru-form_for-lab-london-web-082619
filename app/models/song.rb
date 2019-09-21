class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :genre

  def artist_name
    self.artist.name
  end

  def genre_name
    self.genre.name
  end
end
