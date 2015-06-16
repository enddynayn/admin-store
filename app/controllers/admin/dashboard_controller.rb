class Admin::DashboardController < Admin::BaseController

  def index
    # byebug

    @dashboard = User.all_user_items

  end

  def show
    render
  end
end
