class ParksController < AppController
  def index
    @parks = Park.all
  end

  def create
    @park = Park.new parks_params

    if @park.save!
      redirect_to parks_path
    else
      render :create
    end
  end

  def new
    @park = Park.new
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

  def parks_params
    params.require(:park).permit(:geolocalization, :types_of_vehicles)
  end
end
