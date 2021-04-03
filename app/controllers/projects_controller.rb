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

    def update
        if @project.update(project_params)
            render json: @project
        else
            render json: @project.errors
        end
    end

    def delete

    end
end