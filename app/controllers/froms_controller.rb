class FromsController < ApplicationController
  def index
    @froms = From.all
  end

    def show
    @from = From.find(params[:id])
  end


  def new
    @from = From.new
  end

  def create
    @from = From.new(from_params)

    if @from.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @from = From.find(params[:id])
  end

  def update
    @from = From.find(params[:id])

    if @from.update(from_params)
      redirect_to @from
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def from_params
      params.require(:from).permit(:first_name, :last_name, :address, :mobile_no)
    end
  end

