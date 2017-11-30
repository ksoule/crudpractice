get '/' do
  @workshops = Workshop.all
  @exercises = Exercise.all
  @skills = Skill.all
  erb :'/index'
end
