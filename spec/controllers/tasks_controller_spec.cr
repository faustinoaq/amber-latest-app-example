require "./spec_helper"

def tasks_hash
  {"name" => "Fake"}
end

def tasks_params
  params = [] of String
  params << "name=#{tasks_hash["name"]}"
  params.join("&")
end

def create_tasks
  model = Tasks.new(tasks_hash)
  model.save
  model
end

class TasksControllerTest < GarnetSpec::Controller::Test
  getter handler : Amber::Pipe::Pipeline

  def initialize
    @handler = Amber::Pipe::Pipeline.new
    @handler.build :web do
      plug Amber::Pipe::Error.new
      plug Amber::Pipe::Session.new
      plug Amber::Pipe::Flash.new
    end
    @handler.prepare_pipelines
  end
end

describe TasksControllerTest do
  subject = TasksControllerTest.new

  it "renders tasks index template" do
    Tasks.clear
    response = subject.get "/tasks"

    response.status_code.should eq(200)
    response.body.should contain("Tasks")
  end

  it "renders tasks show template" do
    Tasks.clear
    model = create_tasks
    location = "/tasks/#{model.id}"

    response = subject.get location

    response.status_code.should eq(200)
    response.body.should contain("Show Tasks")
  end

  it "renders tasks new template" do
    Tasks.clear
    location = "/tasks/new"

    response = subject.get location

    response.status_code.should eq(200)
    response.body.should contain("New Tasks")
  end

  it "renders tasks edit template" do
    Tasks.clear
    model = create_tasks
    location = "/tasks/#{model.id}/edit"

    response = subject.get location

    response.status_code.should eq(200)
    response.body.should contain("Edit Tasks")
  end

  it "creates a tasks" do
    Tasks.clear
    response = subject.post "/tasks", body: tasks_params

    response.headers["Location"].should eq "/tasks"
    response.status_code.should eq(302)
    response.body.should eq "302"
  end

  it "updates a tasks" do
    Tasks.clear
    model = create_tasks
    response = subject.patch "/tasks/#{model.id}", body: tasks_params

    response.headers["Location"].should eq "/tasks"
    response.status_code.should eq(302)
    response.body.should eq "302"
  end

  it "deletes a tasks" do
    Tasks.clear
    model = create_tasks
    response = subject.delete "/tasks/#{model.id}"

    response.headers["Location"].should eq "/tasks"
    response.status_code.should eq(302)
    response.body.should eq "302"
  end
end
