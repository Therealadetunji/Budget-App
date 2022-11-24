class GroupsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    return unless user_signed_in?

    @groups = current_user.groups
    @logged_in_user = current_user
    @entities = current_user.entities.all
    @amount = []

    @entities.each do |entity|
      @amount.push(entity.amount)
    end

    @total_amount = 0
    @amount.each do |item|
      @total_amount += item
    end
  end

  def new
    @group = Group.new
  end

  def create
    @group = current_user.groups.new(groups_info)

    if @group.save
      redirect_to groups_path, notice: 'Group created successfully'
    else
      render :new, status: 'No group created'
    end
  end

  private

  def groups_info
    params.require(:groups).permit(:name, :icon)
  end
end
