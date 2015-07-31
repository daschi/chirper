get '/' do
  erb :index
end

get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  @user = User.create(email: params[:email], firstname: params[:firstname],
    lastname: params[:lastname], handle: params[:handle],
    image_link: params[:image_link], password_hash: params[:password_hash])
    redirect "/users/#{@user.id}"
end
