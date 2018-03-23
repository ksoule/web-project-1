get '/crew' do
  @crew = Crew.all
  erb :'crew/index'
end

get '/crew/new' do
  erb :"/crew/new"
end

post '/crew' do
  @crew = Crew.create!(params)
  redirect "/crew/#{@crew.id}/edit"
end

get '/crew/:id' do
  @crew = Crew.find(params[:id])
  erb :"crew/show"
end

get '/crew/:id/edit' do
  @crew = Crew.find(params[:id])
  erb :"crew/edit"
end

put '/crew/:id' do
  @crew = Crew.find(params[:id])
  redirect "/crew/#{@crew.id}"
end

delete '/crew/:id' do
  @crew = Crew.find(params[:id])
  @crew.delete
  redirect '/crew'
end
