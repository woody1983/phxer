class TablesController < ApplicationController

def index
    @tables = Table.paginate(table: params[:table])
 end

def create
    @database = Database.find(params[:database_id])
    @table = @database.tables.create(params[:table])
    flash[:success] = "Table is created."
    redirect_to database_path(@database)
  end

end


