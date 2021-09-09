ActiveAdmin.register Blog do
  permit_params :title, :body, :user_id

  controller do
    before_action :require_login
    def require_login
      flash[:error] = 'you must be logged in to see this page'
      redirect_to root_path
    end
  end
end
