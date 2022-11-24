class EntitiesController < ApplicationController
  def index
    @entities = Entity.all
    @group = Group.find_by(params[:id])
  end

  def show
    @entity = Entity.find(params[:id])
  end

  def new
    @entity = Entity.new
  end

  def create
    @entity = current_user.entities.new(entities_info)
        if @entity.save
          redirect_to group_entities_path, notice: 'Entities created successfully.'
        else
          render :new, status: 'Error while creating entities'
        end
  end

  private
      def entities_info
        params.require(:entities).permit(:name, :amount)
      end

end
