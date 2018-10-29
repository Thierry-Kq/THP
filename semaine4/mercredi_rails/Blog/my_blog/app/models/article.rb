class Article < ApplicationRecord
  has_many :comments
  has_many :categorys
  has_many :likes
  belongs_to :user
end
