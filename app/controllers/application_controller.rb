class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter RubyCAS::Filter
  before_filter :current_user
  before_filter :first_time_user

  helper_method :current_user

  def current_user
    User.where(netid: session[:cas_user]).first
  end

  def first_time_user
    if !current_user
      redirect_to new_user_path and return
    end
  end

end
