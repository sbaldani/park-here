class User < ApplicationRecord
	has_many :cars
	has_many :rent

end
