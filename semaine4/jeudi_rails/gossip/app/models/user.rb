class User < ApplicationRecord
  belongs_to :city
  has_many :tags
  has_many :buzzs
  has_many :private_messages
end
