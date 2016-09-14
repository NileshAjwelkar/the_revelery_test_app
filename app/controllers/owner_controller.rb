class OwnerController < ApplicationController


  def get_owner_articles
    owner = Owner.where(:name => params[:owner_name]).first
    @articles = owner.articles
    render json: {"owner_name" => params[:owner_name], :articles => @articles}
  end

  def get_all_owners
    owners = Owner.all
    render json: {"owners" => owners}
  end

  def owner_details
    owner = Owner.where(:name => params[:owner_name]).first
    render json: owner
  end
end
