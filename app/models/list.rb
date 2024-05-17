class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo

  validates :name, uniqueness: true, presence: true


  # my solution on Thursday:

  # has_many :bookmarks
  # has_many :movies, through: :bookmarks, dependent: :destroy

  # validates :name, presence: true, uniqueness: true
end
