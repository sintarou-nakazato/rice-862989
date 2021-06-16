class Food < ApplicationRecord
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :menu, presence: true
  validates :image, presence: true

  belongs_to :user
  has_one_attached :image
  has_many :comments
end
