class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :create_cart

  private
  def create_cart
    @cart = Cart.build_cart session
  end

  def verify_admin
    unless current_user.admin?
      redirect_to root_path
      flash[:danger] = t "danger.user_is_not_admin"
    end
  end
end
