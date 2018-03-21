get '/crew_position' do
  @crew_positions = Crew_position.all
  erb :'crew_position/index'
end

get '/crew_position/new' do
  erb :"/crew_position/new"
end

post '/crew_position' do
  @crew_position = Crew_position.create!(params)
  redirect "/crew_position/#{@crew_position.id}/edit"
end

get '/crew_position/:id' do
  @crew_position = Crew_position.find(params[:id])
  erb :"crew_position/show"
end

get '/crew_position/:id/edit' do
  @crew_position = Crew_position.find(params[:id])
  erb :"crew_position/edit"
end

put '/crew_position/:id' do
  @crew_position = Crew_position.find(params[:id])
  redirect "/crew_position/#{@crew_position.id}"
end

delete '/crew_position/:id' do
  @crew_position = Crew_position.find(params[:id])
  @crew_position.delete
  redirect '/crew_position'
end
