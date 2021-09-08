class RepliesController < InheritedResources::Base

  private

    def reply_params
      params.require(:reply).permit(:text, :user_id, :blog_id)
    end

end
