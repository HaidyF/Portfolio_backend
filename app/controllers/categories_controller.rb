class CategoriesController < ApplicationController
    def index
        @categories = Category.all

        render json: @categories
    end

    def show
        render json: @category
    end

    def create
        @category = Category.new(category_params)

        if @category.save
            render json: @category
        else
            render json: @category.errors
        end
    end

    def update
        if @category.update(category_params)
            render json: @category
        else
            render json: @category.errors
        end
    end

    def delete

    end
end