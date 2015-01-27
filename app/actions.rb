# Homepage (Root path)
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