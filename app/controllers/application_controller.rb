class ApplicationController < ActionController::Base
  protected

  def after_sign_in_path_for(resource)
    case resource
    when AdminUser
      admin_dashboard_path
    when User
      posts_path
    else
      root_path
    end
  end
end
