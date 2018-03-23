get '/review' do
  @reviews = Review.all
  erb :'review/index'
end

get '/review/new' do
  erb :"/review/new"
end

post '/review' do
  @review = Review.create!(params)
  redirect "/review/#{@review.id}/edit"
end

get '/review/:id' do
  @review = Review.find(params[:id])
  erb :"review/show"
end

get '/review/:id/edit' do
  @review = Review.find(params[:id])
  erb :"review/edit"
end

put '/review/:id' do
  @review = Review.find(params[:id])
  redirect "/review/#{@review.id}"
end

delete '/review/:id' do
  @review = Review.find(params[:id])
  @review.delete
  redirect '/review'
end
