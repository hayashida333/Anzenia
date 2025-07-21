class AdminUsers::SessionsController < Devise::SessionsController
  protected

  def after_sign_in_path_for(resource)
    admin_dashboard_path # ログイン後はここに遷移
  end
end