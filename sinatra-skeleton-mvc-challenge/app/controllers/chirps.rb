post '/chirps' do
  @chirp = Chirp.create(content: params[:content], user_id: current_user.id)
  redirect "/users/#{@chirp.user_id}"
end
