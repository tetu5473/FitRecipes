Rails.application.routes.draw do
  root 'recipes#index' # トップページをレシピの一覧ページに変更します。
  
  # ログイン機能も必要なければ、以下のルートも削除します。
  # get '/signup', to: 'users#new'
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # delete '/logout', to: 'sessions#destroy'
  
  resources :recipes, only: [:index, :show, :new, :create, :edit, :update, :destroy] # 必要なアクションのみに限定します。
end
