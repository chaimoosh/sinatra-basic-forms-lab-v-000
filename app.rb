require_relative 'config/environment'
require_relative 'models/puppy.rb'
class App < Sinatra::Base
  get '/' do 
    erb :index
  end 
  
  get '/new' do 
    erb :create_puppy
  end 
  
  post '/display_puppy' do 
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    @name = @puppy.name 
    @age = @puppy.age 
    @breed = @puppy.breed
    erb :display_puppy
  end 
end