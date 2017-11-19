class TodoController < ApplicationController
    def index
        @todo_description = "Make a curriculum"
        @todo_pomodoro_estimate = 4
    end
    def show
        @todo = Todo.find_by_id(params[:id])
    end
end