get '/movies' do
  @movies = Movie.all
  erb :'movies/index'
end

get '/movies/new' do
  erb :"/movies/new"
end

post '/movies' do
  @exercise = Movie.create!(params)
  redirect "/movies/#{@movie.id}/edit"
end

get '/movies/:id' do
  @movie = movie.find(params[:id])
  erb :"movies/show"
end

get '/movies/:id/edit' do
  @movie = movie.find(params[:id])
  erb :"movies/edit"
end

put '/movies/:id' do
  @movie = movie.find(params[:id])

  redirect "/movies/#{@movie.id}"
end

delete '/movies/:id' do
  @movie = Movie.find(params[:id])
  @movie.delete
  redirect '/movies'
end



