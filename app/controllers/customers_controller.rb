class CustomersController < AppController
	def index
    @users = User.all
	end
  
  def create
    @user = User.new users_params

    if @user.save
      redirect_to customers_path
    else
      render :create
    end
  end

  def new
    @user = User.new
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

  def users_params
    params.require(:user).permit(:name, :surname, :address, :phone, :email, :password, :id_number)
  end
end