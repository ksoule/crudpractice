get '/participants' do
  @participants = Participant.all
  erb :"participant/index"
end

get '/participants/new' do
  erb :"/participants/new"
end

post '/participants' do
  @participants = Participant.create!(params)
  redirect :"participant/index"
end

get '/participants/:id' do
  erb :"/participants/show"
end

get '/participants/:id/edit' do
  @participant = Participant.find(params[:id])
  erb :"/participants/edit"
end

put '/participants/:id' do
end

delete '/participants/:id' do
  @participant = Participant.find(params[:id])
  @participant.delete
end
