require_relative 'config/environment'

class App < Sinatra::Base

    # In app.rb build out a GET request to load a homepage. The homepage should go to the main route /.
    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/' do
        @puppy_name = params[:name]
        @puppy_breed = params[:breed]
        @puppy_age = params[:age]

        erb :display_puppy
    end

end

