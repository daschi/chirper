
get '/' do
  erb :index
end

get '/users/new' do
  @user = current_user
  erb :'/users/new'
end

post '/users' do
  @user = User.create(email: params[:email], firstname: params[:firstname],
    lastname: params[:lastname], handle: params[:handle],
    image_link: params[:image_link], password: params[:password_hash])
    login(@user)
    redirect "/users/#{@user.id}"
end

get '/users/:id' do
  # @user = current_user
  @chirps = Chirp.where(user_id: session[:user_id])
  erb :'users/show'
end


 get '/login' do
    erb :"sessions/new"
 end

post '/sessions' do
  user = User.find_by(handle: params[:handle])
  if user
    login(user)
    redirect "users/#{user.id}"
  else
    erb :'/sessions/new'
  end
end
