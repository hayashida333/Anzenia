class UsersController < ApplicationController
    before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
    # 必要ならビューで使うための処理を書く
  end

  # 他のアクションもあればここに
end
