get '/genre' do
  @genres = Genre.all
  erb :'genre/index'
end

get '/genre/new' do
  erb :"/genre/new"
end

post '/genre' do
  @genre = Genre.create!(params)
  redirect "/genre/#{@genre.id}/edit"
end

get '/genre/:id' do
  @genre = Genre.find(params[:id])
  erb :"genre/show"
end

get '/genre/:id/edit' do
  @genre = Genre.find(params[:id])
  erb :"genre/edit"
end

put '/genre/:id' do
  @genre = Genre.find(params[:id])
  redirect "/genre/#{@genre.id}"
end

delete '/genre/:id' do
  @genre = Genre.find(params[:id])
  @genre.delete
  redirect '/genre'
end
