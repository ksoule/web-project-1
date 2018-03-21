get '/role' do
  @roles = Role.all
  erb :'role/index'
end

get '/role/new' do
  erb :"/role/new"
end

post '/role' do
  @role = Role.create!(params)
  redirect "/role/#{@role.id}/edit"
end

get '/role/:id' do
  @role = Role.find(params[:id])
  erb :"role/show"
end

get '/role/:id/edit' do
  @role = Role.find(params[:id])
  erb :"role/edit"
end

put '/role/:id' do
  @role = Role.find(params[:id])
  redirect "/role/#{@role.id}"
end

delete '/role/:id' do
  @role = Role.find(params[:id])
  @role.delete
  redirect '/role'
end
