class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: {minimum: 6}
  validates :movie_id, uniqueness: {scope: :list_id, message: "is already in the list"}

  # my solution on Thursday:

  # validates :movie, presence: true
  # validates :list, presence: true
  # validates :movie_id, uniqueness: { scope: :list_id }
  # validates :comment, length: { minimum: 6 }
end
