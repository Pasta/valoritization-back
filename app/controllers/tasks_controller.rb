class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
    render json: {:tasks => @tasks}
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    task = Task.find(params[:id])
    render json: task
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)
    if @task.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      render json: @task, status: :created, location: @task
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
    params.require(:task).permit(:title, :value, :cost)
  end
end
