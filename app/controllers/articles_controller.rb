class ArticlesController < ApplicationController
  before_action :find_article, only: [:show]

  def show
    if @article
      render json: @article, except: [ :user_id, :created_at, :updated_at ], :methods => :owner_name
    else
      render json: { error: "Not found" }, status: :unprocessable_entity
    end
  end

  private

  def find_article
    @article = Article.find params[:id]
      rescue ActiveRecord::RecordNotFound
        render json: { error: "Not found" }, status: :unprocessable_entity
  end
end
