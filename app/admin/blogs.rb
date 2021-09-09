ActiveAdmin.register Blog do
  permit_params :title, :body, :user_id
end
