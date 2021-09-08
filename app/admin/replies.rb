ActiveAdmin.register Reply do
  permit_params :text, :user_id, :blog_id
end
