class App < Sinatra::Base
  enable :sessions
  register Sinatra::Flash
  # vet ej
  set :show_exceptions, :after_handler

  get '/' do
    slim :index
  end

  get '/contact' do
    slim :contact
  end

  get '/cv' do
    slim :cv
  end

  get '/projects' do
    slim :projects
  end

  get '/photos' do
    @images = Photos.all()
    slim :photos
  end

end
