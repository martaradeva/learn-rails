class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @current_task = Task.new
  end

  def create
    #render :text => params.inspect
    @current_task = Task.create params.require("task").permit("name", "description")
    if @current_task.valid?
      redirect_to action: "show", id: @current_task.id
    else
      render action: "new"
    end
  end

  def edit
    @current_task = Task.find_by id: params["id"]
  end

  def update
    @current_task = Task.find_by id: params["id"]
    @current_task.update params.require("task").permit("name", "description")
    if @current_task.valid?
      redirect_to action: "show", id: @current_task.id
    else
      render action: "new"
    end
  end

  def show
    #render :text => params["id"].inspect
    @current_task = Task.find_by id: params["id"]
  end
end
