class ProjectsController < ApplicationController

    def index
        @projects = Project.all

        render json: @projects
    end

    def show
        render json: @project
    end

    def create
        @project = Project.new(project_params)

        if @project.save
            render json: @project
        else
            render json: @project.errors
        end
    end

    def destroy
        project = Project.find(params[:id])
        project.destroy
        render json: {message: "Successfully deleted #{project.title}!"}
    end

    private

    def project_params
        params.require(:project).permit(:title, :quote, :description, :image_URL, :location, :year, :category_id)
    end

end