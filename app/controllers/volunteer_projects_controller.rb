class VolunteerProjectsController < ApplicationController
  before_action :set_volunteer_project, only: [:show, :edit, :update, :destroy]

  # GET /volunteer_projects
  # GET /volunteer_projects.json
  def index
    @volunteer_projects = VolunteerProject.all
  end

  # GET /volunteer_projects/1
  # GET /volunteer_projects/1.json
  def show
  end

  # GET /volunteer_projects/new
  def new
    @volunteer_project = VolunteerProject.new
  end

  # GET /volunteer_projects/1/edit
  def edit
  end

  # POST /volunteer_projects
  # POST /volunteer_projects.json
  def create
    @volunteer_project = VolunteerProject.new(volunteer_project_params)

    respond_to do |format|
      if @volunteer_project.save
        format.html { redirect_to @volunteer_project, notice: 'Volunteer project was successfully created.' }
        format.json { render :show, status: :created, location: @volunteer_project }
      else
        format.html { render :new }
        format.json { render json: @volunteer_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /volunteer_projects/1
  # PATCH/PUT /volunteer_projects/1.json
  def update
    respond_to do |format|
      if @volunteer_project.update(volunteer_project_params)
        format.html { redirect_to @volunteer_project, notice: 'Volunteer project was successfully updated.' }
        format.json { render :show, status: :ok, location: @volunteer_project }
      else
        format.html { render :edit }
        format.json { render json: @volunteer_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /volunteer_projects/1
  # DELETE /volunteer_projects/1.json
  def destroy
    @volunteer_project.destroy
    respond_to do |format|
      format.html { redirect_to volunteer_projects_url, notice: 'Volunteer project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_volunteer_project
      @volunteer_project = VolunteerProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def volunteer_project_params
      params.require(:volunteer_project).permit(:name, :description, :link)
    end
end
