class UsersController < ApplicationController
  #username: test@test.com
  #superuser: test.superadmin@test.com
  #password: password

  #This is to authorize user access to controller's actions
  #load_and_authorize_resource

  def delete
  end

  def edit
  end

  def index
    @users = User.all
  end


  def show
    @user=User.find(params[:id])
    @view_your_points = true
  end

  def create
  end

  def update
  end

  def destroy
  end

end
