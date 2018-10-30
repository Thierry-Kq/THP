class PrivateMessageDest < ApplicationRecord
  belongs_to :user, through: :private_message
end
