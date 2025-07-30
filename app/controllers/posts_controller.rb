# frozen_string_literal: true

class PostsController < ApplicationController
  # GET /posts
  def index
    @posts = Post.order(created_at: :desc).page(params[:page]).per(9) # 1ページに9件表示（3列×3行想定）
  end

  # GET /posts/:id
  def show
    @post = Post.find(params[:id])
  end
end
