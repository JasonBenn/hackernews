get '/' do
  erb :posts, locals: { posts: Post.all }
end

get '/post/:id' do
  erb :single_post, locals: { post: Post.find(params[:id]) }
end

