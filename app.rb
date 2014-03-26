require "sinatra"


set :bind, '0.0.0.0'

get "/" do
  "This is the root directory"
end

get "/time" do
  erb :time
end

get "/welcome" do
  "Welcome, to Hubert and Philip's to do list"
end

get "/users" do
  "Get all of the users"
end

get "/tasks" do
  "Get all of the tasks"
end

get "/gather_info" do
  erb :info
end

post "/info-summary" do
  # how to access the values that were submitted by the form!
  puts params
  @name = params[:name]
  erb :summary
end

# we are going to do View Templating.

