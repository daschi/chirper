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
