get "/exercises" do
  @exercises = Exercise.all
  erb :'exercises/index'
end

get "/exercises/new" do

  erb :"/exercises/new"
end

post "/exercises" do
  @exercise = Exercise.create!(params)

  redirect :"/exercises"
end

get "/exercises/:id" do
  @exercise = Exercise.find(params[:id])
  @skillsets = @exercise.skillsets.all
  erb :"exercises/show"
end

get "exercises/:id/edit" do
  @exercise = Exercise.find(params[:id])
  erb :"exercises/edit"
end

put "exercises/:id" do
  @exercise = Exercise.find(params[:id])
  redirect "/exercises"
end

delete "exercises/:id" do
  @exercise = Exercise.find(params[:id])
  @exercise.delete
  redirect "/exercises"
end
