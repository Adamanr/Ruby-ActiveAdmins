ActiveAdmin.register User do
#  form do |f|
#    f.inputs "User Details" do
#      f.input :email
#      f.input :password
#      f.input :password_confirmation
#      f.input :superadmin, :label => "Super Administrator"
#    end
#    f.actions
#  end
#
#  create_or_edit = Proc.new {
#    @user = User.where(id: params[:id]).first_or_create
#    @user.superadmin = permitted_params[:user][:superadmin]
#    @user.attributes = permitted_params[:user].delete_if do |k, v|
#      (k == "superadmin") ||
#        (["password", "password_confirmation"].include?(k) && v.empty? && !@user.new_record?)
#    end
#    if @user.save
#      redirect_to :action => :show, :id => @user.id
#    else
#      render active_admin_template((@user.new_record? ? 'new' : 'edit') + '.html.erb')
#    end
#  }
#  member_action :create, :method => :post, &create_or_edit
#  member_action :update, :method => :put, &create_or_edit

  permit_params :email, :password, :password_confirmation, :superadmin
end