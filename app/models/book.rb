class Book < ActiveRecord::Base
  has_many :checkouts
  belongs_to :category
  validates :title, null: false
  validates :rating, length: { minimum: 0 }
  validates :rating, length: { maximum: 100 }
end
