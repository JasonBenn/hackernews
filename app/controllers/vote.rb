get '/vote/post/:id/:direction' do
  Post.find(params[:id]).votes << Vote.create(direction: params[:direction])
end

get '/vote/comment/:id/:direction' do
  Comment.find(params[:id]).votes << Vote.create(direction: params[:direction])
end
