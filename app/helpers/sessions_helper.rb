module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def correct_user
  @task = current_user.tasks.find_by(id: params[:id])
    unless @task
      redirect_to action: :new
    end
  end
  
  def logged_in?
    !!current_user
  end
end
