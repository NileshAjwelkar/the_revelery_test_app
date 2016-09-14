class ArticlesController < ApplicationController

  def show
    article = Article.where(:id => params[:id]).first
    owner = Owner.where(:id => article.owner_id).first.name

    render :json =>  {"owner_name" => owner}.merge(article.as_json)
  end


end
