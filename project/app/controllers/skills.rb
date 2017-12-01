get "/skills" do
  @skills = Skill.all?
  erb 'skills/index'
end

get "/skills/new" do

  erb :'skills/new'
end

post "/skills" do
  @skill = Skill.create!(params)

  redirect :"/skills"
end

get "/skills/:id" do
  @skill = Skill.find(params[:id])

  erb :"skills/show"
end

get "/skills/:id/edit" do
  @skill = Skill.find(params[:id])
  erb :"skills/edit"
end

put "/exercises/:id" do
  @skill = Exercise.find(params[:id])
  redirect "/skills"
end

delete "/skills/:id" do
  @skill = skill.find(params[:id])
  @skill.delete
  redirect "/skills"
end
