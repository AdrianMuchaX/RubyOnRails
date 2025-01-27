class ProjectsController < ApplicationController
  before_action :set_project, only: [:destroy]

  # Other actions ...

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end
end
