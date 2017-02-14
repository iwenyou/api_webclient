class FriendsController < ApplicationController
  def index

    @friends = Unirest.get("http://localhost:3000/api/v1/friends").body

  end

  def show

    id = params[:id]

    @friend = Unirest.get("http://localhost:3000/api/v1/friends/#{id}").body

  end

  def new

  end

  def create

    @friend = Unirest.post("http://localhost:3000/api/v1/friends", :parameters => {first_name: params[:first_name], last_name: params[:last_name], cat_name: params[:cat_name]}).body

    redirect_to "/friends/#{@friend['id']}"

  end

  def edit

    @id = params[:id]

    @friend = Unirest.get("http://localhost:3000/api/v1/friends/#{@id}").body

  end

  def update

    id = params[:id]

    @friend = Unirest.patch("http://localhost:3000/api/v1/friends/#{id}/", :parameters => {first_name: params[:first_name], last_name: params[:last_name], cat_name: params[:cat_name]}).body

    redirect_to "/friends/#{@friend['id']}"

  end

  def destroy

    id = params[:id]

    @friend = Unirest.delete("http://localhost:3000/api/v1/friends/#{id}").body

    redirect_to "/friends/#{@friend['id']}"

  end
end
