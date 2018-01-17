class UsersController < ApplicationController
  before_action :set_user, only: [:show, :show_articles]

  def show
    if params[:id] != 'owners'
      if @user
        render json: { owner_name: @user.username }
      else
        render json: { error: "Not found" }, status: :unprocessable_entity
      end
    else
      @users = User.all
      render json: { owners: @users }
    end
  end

  def show_articles
    @articles = @user.articles
    if @articles
      render
    else
      render json: { error: "not found" }, status: unprocessable_entity
    end
  end

  private

    def set_user
      @user = User.find_by_username params[:id]
    end
end
