class AdminsBackoffice::AdminsController < AdminsBackofficeController
  before_action :find_admin, only: [:edit, :update, :destroy]
  before_action :verify_password, only: [:update]

  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(params_admin)
    if @admin.save
      redirect_to admins_backoffice_admins_path, notice: "Admin created with success"
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    if @admin.destroy
      redirect_to admins_backoffice_admins_path, notice: "Admin deleted with success", status: :see_other
    else
      render :index
    end
  end

  def update
    if @admin.update(params_admin)
      redirect_to admins_backoffice_admins_path, notice: "Admin successfully updated"
    else
      render :edit
    end
  end

  private

  def find_admin
    @admin = Admin.find(params[:id])
  end
 
  def params_admin
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end

  def verify_password
    if params[:admin][:password].blank? && params[:admin][:password_confirmation].blank?
      params[:admin].extract!(:password, :password_confirmation)
    end
  end
end
