class Admin::UsersController < Admin::BaseController

  def show
    puts params.to_yaml
    @user = User.find_by_user_id(params[:id])
  end


end
