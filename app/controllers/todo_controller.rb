class TodoController < ApplicationController
    def index
        @todo_description = "Make a curriculum"
        @todo_pomodoro_estimate = 4
    end
    def show
        @todo = Todo.find_by_id(params[:id])
    end
    def new
    end
    def create
        t = Todo.new
        t.description = params['description']
        t.pomodoro_estimate = params['pomodoro_estimate']
        t.save
        redirect_to "/todo/show/#{ t.id }"
    end
end