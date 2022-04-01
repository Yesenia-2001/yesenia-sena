class AreasController < ApplicationController
    before_action :authenticate_user!
    def index
        @areas = Area.all
    end
    def show
        @area = Area.find(params[:id])
    end
    def new
        @area = Area.new
    end
    def create
        @area = Area.create(
        nombre: params[:nombre])
        if @area.save
            redirect_to areas_path
        else
            render :new
        end        
    end  
end
