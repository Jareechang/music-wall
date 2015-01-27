# Homepage (Root path)
get '/' do
erb :'user/index'
end

post '/' do
  @user= User.create(username: params[:username],
                     password: params[:password],
                        email: params[:email]) 

  if @user.save 
    session[:id]= @user.id 
  else 
    #display error message
    erb :'user/new'
  end
end

get '/login' do 
  erb :'user/show'
end

post '/login' do

user = User.where(username: params[:username], 
                  password: params[:password]).first
if user 
  session[:user_id] = user.id 
  redirect '/home'
end
  redirect '/'
end

get '/home' do 
  if session[:user_id]
    @user = User.find(session[:user_id])
  end
  erb :'user/home'
end


get '/songs' do
  @songs = Music.all 
  erb :'songs/index'
end

get '/songs/new' do

erb :'songs/new'
end

post '/songs' do 
  @song = Music.create(song_title: params[:song_title],
                           singer: params[:singer],
                              url: params[:link])
  if @song.save
    redirect '/songs'
  else 
    erb :'songs/new'
  end
end


get '/songs/:id' do
@song = Music.find(params[:id])
erb :'songs/edit'
end


post '/songs/:id/update' do
@song = Music.find(params[:id]).update(song_title: params[:song_title],
                                           singer: params[:singer],
                                             url: params[:link])

 if @song
    redirect '/songs'
  else 
    erb :'songs/edit'
  end
end