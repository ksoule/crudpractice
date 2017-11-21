get "/exercises" do
  @exercises = Exercise.all
  erb :'exercises/index'
end

get "/exercises/new" do

  erb :"/exercises/new"
end
