get '/user/:id' do
  erb :single_user, locals: { user: User.find(params[:id]) }
end

get '/user/:id/posts' do
  erb :posts, locals: { posts: User.find(params[:id]).posts }
end

get '/user/:id/comments' do
  erb :comments, locals: { comments: User.find(params[:id]).comments }
end
