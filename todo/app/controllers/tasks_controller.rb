class TasksController < ApplicationController
  def show
    @task = Task.new
    @task.name = "debug"
    render 'tasks/show'
  end
end