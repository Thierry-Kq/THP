class Comment < ApplicationRecord
  has_many :edits
  belongs_to :user
  belongs_to :link
end
