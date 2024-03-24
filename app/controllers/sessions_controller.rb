class SessionsController < ApplicationController

  def new
  end

  def create
<<<<<<< HEAD
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_back_or user
    else
      flash.now[:danger] = '認証に失敗しました。'
      render :new
    end
=======
  user = User.find_by(email: params[:session][:email].downcase)
  if user && user.authenticate(params[:session][:password])
    log_in user
    params[:session][:remember_me] == '1' ? remember(user) : forget(user)
    redirect_to recipes_path
  else
    flash.now[:danger] = '認証に失敗しました。'
    render :new
>>>>>>> japanization-and-time-format
  end

  def destroy
<<<<<<< HEAD
     # ログイン中の場合のみログアウト処理を実行します。
    log_out if logged_in?
    flash[:success] = 'ログアウトしました。'
    redirect_to root_url
=======
    # ログイン中の場合のみログアウト処理を実行します。
    log_out if logged_in?
    flash[:success] = 'ログアウトしました。'
    redirect_to root_url # ログアウト後はトップページにリダイレクト
>>>>>>> japanization-and-time-format
  end
end
