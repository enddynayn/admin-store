class Admin::DashboardController < Admin::BaseController

  def index
    # @dashboard = User.all_user_items
    @dashboard = User.all.order(:name).includes(items: [:categories]).page(params[:page]).per(200)
  end

  def show
    render
  end
end
