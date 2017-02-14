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



  end
end
