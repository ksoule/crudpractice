get "/workshops" do
  @workshops = Workshop.all
  erb :"workshops/index"
end

#create
get "/workshops/new" do

  erb :"workshops/new"
end

post "/workshops" do
  @workshop = Workshop.create!(params)
  # if request.xhr?
  #   # "/workshops"
  #   # <li><a href="/workshops/<%=x.id%>"><%= x.name %></a></li>
  #   "<li><a href=\"/workshops/#{@workshop.id}\">#{@workshop.name}</a></li>"
  #   #erb :"/workshops/show"
  # else
    redirect :"/"
  # end
end

#read
get "/workshops/:id" do
  @workshop = Workshop.find(params[:id])
  erb :"workshops/show"
end

put "/workshops/:id" do


end
#destroy
