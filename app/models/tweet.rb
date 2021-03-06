class Tweet < ApplicationRecord
  validates :text, presence: true
  validates :image1, presence: true
  validates :image2, presence: true
  validates :image3, presence: true
  validates :image4, presence: true
  belongs_to :user
  has_many :comments
end
