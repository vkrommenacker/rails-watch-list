class Bookmark < ApplicationRecord
  belongs_to :movie, dependent: :destroy
  belongs_to :list

  validates :comment, length: { minimum: 6 }, presence: true
  validates :movie_id, uniqueness: { scope: :list_id, message: 'Bookmark must be unique for this movie and list combination.' }
end
