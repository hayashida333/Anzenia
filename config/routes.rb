Rails.application.routes.draw do
  namespace :admin do
    get "quiz_results/index"
    resources :users
    resources :posts
    resources :videos
    resources :quiz_questions
  end

  devise_for :users

  root "posts#index"

  resources :posts
  resources :videos

  # 一般ユーザー用（削除・作成・編集不可）
  resources :quiz_questions, only: [ :index, :show ] do
    post "answer", on: :member
  end

  namespace :admin do
    resources :quiz_results, only: [ :index ]
  end


  resources :users, only: [ :index, :show ]

  # ヘルスチェック
  get "up", to: "rails/health#show", as: :rails_health_check

  # PWA用ファイル
  get "service-worker", to: "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest", to: "rails/pwa#manifest", as: :pwa_manifest
end
