class CarsController < AppController
  def index
    @cars = Car.all
  end

  def create
    @car = Car.new cars_params

    if @car.save!
      redirect_to cars_path
    else
      render :create
    end
  end

  def new
    @car = Car.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def cars_params
    params.require(:car).permit(:registration_plate, :type_of_car, :model, :year, :color, :brand)
  end
end