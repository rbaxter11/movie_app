class Movie < ApplicationRecord
  validates :title, presence: true, length: { minimum: 1 }
  validates :year, numericality: { only_integer: true, greater_than: 1, less_than: 3000 }
  validates :plot, length: { minimum: 1, maximum: 300 }
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    genres[0]["name"]
  end
end
