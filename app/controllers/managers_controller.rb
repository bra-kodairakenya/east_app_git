class ManagersController < ApplicationController

  http_basic_authenticate_with name: "kenya", password: "0728", only: [:index]
  def index
    @posts = Post.all
    @participations = Participation.all
  end
end
