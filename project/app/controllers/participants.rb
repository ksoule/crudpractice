get "/participants" do
  @participants = Participant.all
  erb :"participant/index"
end

GET '/participants/new' do

  erb :"/participants/new"
end

POST  '/participants' do
  @participants = Participant.create!(params)
  redirect :"participant/index"

end

GET '/participants/:id' do

  erb :"/participants/show"
end

GET '/participants/:id/edit' do
    @participant = Participant.find(params[:id])
   erb:"/participants/edit"
end

PUT '/participants/:id' do


end

DELETE  '/participants/:id' do
  @participant = Participant.find(params[:id])
  @participant.delete
end










