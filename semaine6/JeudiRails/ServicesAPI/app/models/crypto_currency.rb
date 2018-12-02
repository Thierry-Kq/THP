class CryptoCurrency < ApplicationRecord
	validates :name, uniqueness: true
end
