class TasksController < ApplicationController
  before_action :set_project

  def new
    @task = @project.tasks.new
  end

  def create
    @task = @project.tasks.new(task_params)
    if @task.save
      redirect_to user_project_path(@project.user, @project), notice: "Task successfully created."
    else
      render :new
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def task_params
    params.require(:task).permit(:title, :status)
  end
end
