class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  def index
    @tasks = Task.where(:matrix_id => params[:matrix_id])
    render json: {:tasks => @tasks}
  end

  # GET /tasks/1
  def show
    task = Task.find(params[:id])
    render json: task
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)
    if @task.save
      render_task_as_json
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      render_task_as_json
    else
      render json: @task.errors, status: :unprocessable_entity

    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
    head :no_content
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_task
    @task = Task.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def task_params
    params.require(:task).permit(:title, :value, :cost, :description, :matrix_id)
  end

  def render_task_as_json
    render json: {:tasks => @task}, status: :created, location: @task
  end
end
