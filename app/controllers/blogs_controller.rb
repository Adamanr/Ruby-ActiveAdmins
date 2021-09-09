class BlogsController < InheritedResources::Base
  #before_action :require_login
  private

  def blog_params
    params.require(:blog).permit(:title, :body, :user_id)
  end

  #  def require_login
  #    flash[:error] = "you must be logged in to see this page"
  #    redirect_to root_path
  # end
end
