class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @user_apps = current_user.apps.order("user_apps.position ASC")
  end
end
