# frozen_string_literal: true
module Admin
  class UsersController < ApplicationController
   def index
  @users = User.order(created_at: :desc).page(params[:user_page]).per(10)
end

    def show
      @user = User.find(params[:id])
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to admin_users_path
      else
        render :new
      end
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])

      if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
        params[:user].extract!(:password, :password_confirmation)
      end

      if @user.update(user_params)
        redirect_to admin_user_path(@user), notice: "ユーザー情報を更新しました"
      else
        render :edit
      end
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to admin_users_path, notice: "ユーザーを削除しました"
    end

    private

    def user_params
      params.require(:user).permit(:last_name, :first_name, :gender, :email, :tel_number)
    end
  end
end
