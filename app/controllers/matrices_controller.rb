class MatricesController < ApplicationController

  before_action :set_matrix, only: [:show, :destroy, :update]

  def index
    if !params[:ids]
      @matrices = Matrix.where(:shared => true)
    else
      @matrices = Matrix.find(params[:ids])
    end

    render json: {:matrices => @matrices }
  end

  def show
    render json: {:matrices => @matrix.as_json(:include => :tasks, :root => false)}.to_json
  end

  def create
    @matrix = Matrix.new(matrix_params)
    if @matrix.save
      render json: {:matrices => @matrix}, status: :created, location: @matrix
    else
      render json: @matrix.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @matrix.destroy
    head :no_content
  end

  def update
    if @matrix.update(matrix_params)
      render json: {:matrices => @matrix.as_json(:include => :tasks, :root => false)}.to_json, status: :accepted, location: @matrix
    else
      render json: @matrix.errors, status: :unprocessable_entity

    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def matrix_params
    params.require(:matrix).permit(:title, :shared)
  end

  def set_matrix
    @matrix = Matrix.find(params[:id])
  end

end
