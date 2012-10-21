class DatabasesController < ApplicationController
  def new
    @database = Database.new
  end

  def create
    @databases_create = Database.new(params[:database])
    if @databases_create.save
      render 'index'
    else
      render 'new'
    end
  end

  def show
    @databases = Database.find(params[:id])
 
  respond_to do |format|
    format.html  # show.html.erb
    format.json  { render :json => @databases }
  end
  end

  def edit
  end

  def update
  end

  def index
    @databases = Database.all
    respond_to do |format|
    format.html  # index.html.erb
    format.json  { render :json => @databases }
  end
  end
end
 