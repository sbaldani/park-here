class RentsController < AppController
  def index
    @rents = Rent.all
  end

  def create
    @rent = Rent.new rents_params

    if @rent.save!
      redirect_to rents_path
    else
      render :create
    end
  end

  def new
    @rent = Rent.new
  end

  private

    def rents_params
      params.require(:rent).permit(:owner_id, :client_id, :car_id, :park_id, :date_from, :date_to)
    end
end
