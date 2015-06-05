class Admin::DashboardController < Admin::BaseController

  def index
    # byebug
    @user = User.all.includes(:items)

  end
end
