get '/exercises' do
  @exercises = Exercise.all
  erb :'exercises/index'
end

get '/exercises/new' do
  erb :"/exercises/new"
end

post '/exercises' do
  # separate the params hash into exercise and skill set
  @exercise = Exercise.create!(params)
  @skillsets = Skillset.create!
  redirect :"/exercises"
end

get '/exercises/:id' do
  @exercise = Exercise.find(params[:id])
  @skillsets = @exercise.exercise_skills
  erb :"exercises/show"
end

get 'exercises/:id/edit' do
  @exercise = Exercise.find(params[:id])
  @participants = Participant.all
  @skills = skill.all
  erb :"exercises/edit"
end

put 'exercises/:id' do
  @exercise = Exercise.find(params[:id])
  redirect '/exercises'
end

delete 'exercises/:id' do
  @exercise = Exercise.find(params[:id])
  @exercise.delete
  redirect '/exercises'
end
