# frozen_string_literal: true

module Admin
  class ApplicationController < ::ApplicationController
    def after_sign_in_path_for(resource)
      case resource
      when AdminUser
        admin_dashboard_path # 管理者は管理用ダッシュボードへ
      when User
        posts_path           # 一般ユーザーは /posts に飛ばす
      else
        root_path
      end
    end
  end
end
