class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  
  # my solution on Thursday:

  # has_many :bookmarks
  # has_many :lists, through: :bookmarks

  # validates :title, presence: true, uniqueness: true
  # validates :overview, presence: true
end
