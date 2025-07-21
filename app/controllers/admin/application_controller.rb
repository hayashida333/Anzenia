class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    case resource
    when AdminUser
      admin_dashboard_path # 管理者ログイン後に飛ばすパス
    when User
      user_dashboard_path # 従業員ログイン後に飛ばすパス
    else
      root_path
    end
  end
end