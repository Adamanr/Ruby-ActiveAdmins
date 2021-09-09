class RepliesController < InheritedResources::Base
  #  before_action :require_login
  private

  def reply_params
    params.require(:reply).permit(:text, :user_id, :blog_id)
  end

  #def require_login
  #  flash[:error] = 'you must be logged in to see this page'
  #  redirect_to root_path
  #end
end
