class Api::DesksController < ApplicationController
  before_action :authenticate!
  before_action :set_desk, only: %i[show update destroy]

  def index
    @desks = Desk.all
    render json: @desks
  end

  def show
    render json: @desk
  end

  def create
    @desk = current_user.desks.build(desk_params)

    if @desk.save
      render json: @desk
    else
      render json: @desk.errors, status: :bad_request
    end
  end

  def update
    if @desk.update(desk_params)
      render json: @desk
    else
      render json: @desk.errors, status: :bad_request
    end
  end

  def destroy
    @desk.destroy!
    render json: @desk
  end

  private

  def set_desk
    @desk = desk.find(params[:id])
  end

  def desk_params
    params.require(:desk).permit(:title, :description)
  end
end
