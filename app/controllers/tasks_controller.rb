class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
  end

  def show
  end

  def edit
  end

  def update
    @task.update(task_params)
  end

  def destroy
    @task.destroy
  end

  private
  def task_params
    params.require(:task).permit(:title, :content)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
