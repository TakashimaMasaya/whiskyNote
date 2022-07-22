class ApplicationController < ActionController::Base
  helper_method :current_user ##viewでログインしているユーザーとして使える
  before_action :login_required

  private

  def current_user ##コントローラーでログインしているユーザーとして使える
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def login_required
    redirect_to login_url unless current_user
  end
end
