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
  redirect :"/exercises/:#{@exercise.id}/edit"
end

get '/exercises/:id' do
  @exercise = Exercise.find(params[:id])
  @skills = @exercise.skills
  erb :"exercises/show"
end

get '/exercises/:id/edit' do
  @exercise = Exercise.find(params[:id])
  @participants = Participant.all
  @skills = Skill.all
  erb :"exercises/edit"
end

put '/exercises/:id' do
  @exercise = Exercise.find(params[:id])
  params[:skill_id].each do |skill|
    Skillset.create!({exercise_id: @exercise.id, skill_id: skill})
    redirect 'exercises/:id'
  end

  @exercise.participants_id = params[:participant_id]
  redirect '/exercises'
end

delete '/exercises/:id' do
  @exercise = Exercise.find(params[:id])
  @exercise.delete
  redirect '/exercises'
end
