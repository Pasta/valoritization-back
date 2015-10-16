class MatricesController < ApplicationController


  # def new
  #   @matrix = Matrix.new
  # end
  #
  # def create
  #   @matrix = Matrix.new(matrix_params)
  #   if !@matrix.save
  #     render json: @matrix.errors, status: :unprocessable_entity
  #   end
  #   render nothing: true
  # end

  # API !
  def index
    @matrices = Matrix.all
    render json: {:matrices => @matrices }
  end

  def show
    matrix = Matrix.find(params[:id])
    render json: {:matrices => matrix.as_json(:include => :tasks, :root => false)}.to_json
  end

  def create
    @matrix = Matrix.new(matrix_params)
    if @matrix.save
      render json: {:matrices => @matrix}, status: :created, location: @matrix
    else
      render json: @matrix.errors, status: :unprocessable_entity
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def matrix_params
    params.require(:matrix).permit(:title)
  end


end
