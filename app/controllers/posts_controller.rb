class PostsController < ApplicationController
  # 認証は不要なら削除 or 必要なら追加

  # GET /posts
  def index
    @posts = Post.all
  end

  # GET /posts/:id
  def show
    @post = Post.find(params[:id])
  end

  # new, create, edit, update, destroy は削除（使わない場合）
end
