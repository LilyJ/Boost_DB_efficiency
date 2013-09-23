class UsersController < ApplicationController
  # def index
  #   @users = User.by_karma.limit(50)
  # end

  def index
    @users = User.by_karma.limit(50)
  end

  def show
    @page = params[:id]
    @users = User.by_karma.page(@page.to_i)
    render :index
  end
end
