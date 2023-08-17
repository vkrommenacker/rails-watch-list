class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  MOVIES = Movie.all

  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
end
