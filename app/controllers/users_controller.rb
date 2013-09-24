class UsersController < ApplicationController

  def index
  end

  def show
    @page = params[:id] || 1
    @users = User.by_karma.page(@page.to_i)
    render :index
  end
end
