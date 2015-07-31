
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
  @chirps = Chirp.where(user_id: session[:user_id])
  @user = User.find_by(id: params[:id])
  if @user == current_user
     p @user
     p current_user
    erb :'users/current_user_show'
  else
    # p 'Stalking'
    erb :'users/stalker_user_show'
  end
end


 get '/login' do
    erb :"sessions/new"
 end

 get '/logout' do
  session.clear
  # p"Succesfull logout"
  erb :index
 end

post '/sessions' do
  @user = User.find_by(handle: params[:handle])
    if @user.password == params[:password_hash]
      login(@user)
      redirect "users/#{@user.id}"
  else
    erb :'/sessions/new'
  end
end
