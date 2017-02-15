class FriendsController < ApplicationController


  def index

    @friends = Friend.all

  end

  def show

    @friend = Friend.find(params[:id])

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

    @id = params[:id]

    Friend.destroy(@id)

    redirect_to "/friends/#{@friend['id']}"

  end
end
