class Checkout < ActiveRecord::Base
  has_many :books
  belongs_to :reader
  validates :book_id, uniqueness: true
  validates :quantity, numericality: { less_than_or_qual_to: 100, only_integer: true }
end
