get '/' do
  @workshops = Workshop.all
  @exercises = Exercise.all
  @skillsets = Skillset.all
  erb :'/index'
end
