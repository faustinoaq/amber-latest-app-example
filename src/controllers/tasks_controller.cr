class TasksController < ApplicationController
  def index
    tasks = Tasks.all
    render("index.slang")
  end

  def show
    if tasks = Tasks.find params["id"]
      render("show.slang")
    else
      flash["warning"] = "Tasks with ID #{params["id"]} Not Found"
      redirect_to "/tasks"
    end
  end

  def new
    tasks = Tasks.new
    render("new.slang")
  end

  def create
    tasks = Tasks.new(tasks_params.validate!)

    if tasks.valid? && tasks.save
      flash["success"] = "Created Tasks successfully."
      redirect_to "/tasks"
    else
      flash["danger"] = "Could not create Tasks!"
      render("new.slang")
    end
  end

  def edit
    if tasks = Tasks.find params["id"]
      render("edit.slang")
    else
      flash["warning"] = "Tasks with ID #{params["id"]} Not Found"
      redirect_to "/tasks"
    end
  end

  def update
    if tasks = Tasks.find(params["id"])
      tasks.set_attributes(tasks_params.validate!)
      if tasks.valid? && tasks.save
        flash["success"] = "Updated Tasks successfully."
        redirect_to "/tasks"
      else
        flash["danger"] = "Could not update Tasks!"
        render("edit.slang")
      end
    else
      flash["warning"] = "Tasks with ID #{params["id"]} Not Found"
      redirect_to "/tasks"
    end
  end

  def destroy
    if tasks = Tasks.find params["id"]
      tasks.destroy
    else
      flash["warning"] = "Tasks with ID #{params["id"]} Not Found"
    end
    redirect_to "/tasks"
  end

  def tasks_params
    params.validation do
      required(:name) do |field|
        if this_field = field
          this_field.size >= 5
        end
      end
    end
  end
end
