class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def filter_admin!
    authenticate_user!
    if(!current_user.admin?)
      redirect_to root_path, alert: "no tienes acceso"
    end
  end
end
