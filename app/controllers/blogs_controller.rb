class BlogsController < InheritedResources::Base

  private

    def blog_params
      params.require(:blog).permit(:title, :body, :user_id)
    end

end
