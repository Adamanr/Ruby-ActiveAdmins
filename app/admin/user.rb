ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :superadmin
end