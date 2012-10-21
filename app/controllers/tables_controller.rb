class TablesController < ApplicationController

def index
    #@tables = Table.paginate(table: params[:table])
 end

def create
    @database = Database.find(params[:database_id])
    @table = @database.tables.create(params[:table])
    flash[:success] = "Table is created."
    redirect_to database_path(@database)
 end

 def show
 	@tables = Table.find(params[:id])
    respond_to do |format|
    format.html  # show.html.erb
    format.json  { render :json => @tables }
  end
 end

end


