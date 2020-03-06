class Car < ApplicationRecord
	belongs_to :user
	#permit_params :registration_plate, :type_of_vehicle, :model, :year, :color, :brand, :user_id
end
