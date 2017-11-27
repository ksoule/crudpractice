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

