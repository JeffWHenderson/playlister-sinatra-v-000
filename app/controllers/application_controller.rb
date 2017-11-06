class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

#========== MOVE TO GENRESCONTROLLER ============
  get '/genres' do
    @genres = Genre.all
    erb :'/genres/index'
  end
#========== MOVE TO ARTISTSCONTROLLER ============
  get '/artists' do
    @artists = Artist.all
    erb :'/artists/index'
  end
#========== MOVE TO SONGSCONTROLLER ============
  get '/songs' do
    @songs = Song.all
    erb :'/songs/index'
  end

end
