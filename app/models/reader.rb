class Reader < ActiveRecord::Base
  belongs_to :checkout
  has_many :books
end
