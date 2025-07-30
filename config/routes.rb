# frozen_string_literal: true

# config/routes.rb
Rails.application.routes.draw do
  root 'home#index'

  # 管理者用ログイン設定
  devise_for :admin_users, path: 'admin', controllers: {
    sessions: 'admin_users/sessions'
  }

  namespace :admin do
    get 'dashboard', to: 'dashboard#index' # ログイン後に飛ぶページ

    resources :users
    resources :posts
    resources :videos
    resources :quiz_questions
    resources :quiz_results, only: [:index]
  end

  # 従業員用
  devise_for :users

  resources :posts
  resources :videos
  resources :quiz_questions, only: %i[index show] do
    post 'answer', on: :member
  end

  resources :users, only: %i[index show]

  # ヘルスチェック
  get 'up', to: 'rails/health#show', as: :rails_health_check

  # PWA用
  get 'service-worker', to: 'rails/pwa#service_worker', as: :pwa_service_worker
  get 'manifest', to: 'rails/pwa#manifest', as: :pwa_manifest
end
