get '/actors' do
  @actors = Actor.all
  erb :'actors/index'
end

get '/actors/new' do
  erb :"/actors/new"
end

post '/actors' do
  @actor = Actor.create!(params)
  redirect "/actors/#{@Actor.id}/edit"
end

get '/actors/:id' do
  @actor = Actor.find(params[:id])
  erb :"actors/show"
end

get '/actors/:id/edit' do
  @actor = Actor.find(params[:id])
  erb :"actors/edit"
end

put '/actors/:id' do
  @actor = Actor.find(params[:id])
  redirect "/actors/#{@Actor.id}"
end

delete '/actors/:id' do
  @actor = Actor.find(params[:id])
  @actor.delete
  redirect '/actors'
end
