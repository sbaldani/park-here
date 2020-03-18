class CarsController < AppController
	def index
	end

	def create
		def cars_params
			params.require(:car).permit(:registration_plate, :type_of_car, :model, :year, :color, :brand)
		end

		@car = Car.build cars_params

		if @car.save!
			redirect to :index
		else 
			redirect to :create
		end
	end

	def new
	end

	def edit
	end

	def show
	end

	def update
	end

	def destroy
	end
end
