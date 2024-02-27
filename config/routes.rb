Rails.application.routes.draw do
  #root 'static_pages#top'
  
  # この行を残すことで、アプリケーションのルートパスをレシピのインデックスページに設定します
  root to: 'recipes#index'

  get '/signup', to: 'users#new'

  # ログイン機能(セッション関連のルート)
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # ユーザーとレシピのリソースルート
  resources :users
  resources :recipes

end