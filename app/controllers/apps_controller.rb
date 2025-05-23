class AppsController < ApplicationController
  # user is logged in
  before_action :authenticate_user!

  # Show list of apps user hasn't added yet
  def available
    # Get all apps except the ones already added
    @available_apps = App.where.not(id: current_user.apps.pluck(:id))
  end

  # Add apps to user's homepage
  def add
    app_ids = params[:app_ids] || []

    app_ids.each_with_index do |id, index|
      current_user.user_apps.create(
        app_id: id,
        position: current_user.user_apps.count + index
      )
    end

    redirect_to root_path, notice: "Apps added."
  end

  # Remove app from homepage
  def remove
    user_app = current_user.user_apps.find_by(app_id: params[:id])

    if user_app
      user_app.destroy
      redirect_to root_path, notice: "App removed."
    else
      redirect_to root_path, alert: "App not found."
    end
  end

  # Reorder apps
end
