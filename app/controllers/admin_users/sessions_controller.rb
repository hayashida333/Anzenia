# frozen_string_literal: true

module AdminUsers
  class SessionsController < Devise::SessionsController
    protected

    def after_sign_in_path_for(_resource)
      admin_dashboard_path # ログイン後はここに遷移
    end
  end
end
