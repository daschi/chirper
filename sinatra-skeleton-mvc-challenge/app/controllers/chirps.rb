post '/chirps' do
  @chirp = Chirp.create(content: params[:content], user_id: current_user.id)
  redirect "/users/#{@chirp.user_id}"
end

post '/chirps/:id/edit' do
  if request.xhr?
      @chirp = Chirp.find_by(id: params[:id])
      @chirp.update_attributes(content: params[:content])
      status 200
  else
    @chirp = Chirp.find_by(id: params[:id])
    @chirp.update_attributes(content: params[:content])
    redirect "/users/#{session[:id]}"
  end
end

