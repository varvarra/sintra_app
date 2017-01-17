require 'sinatra'

get '/' do
  "Hello!"
end

get '/secret' do
  "This is a secret message"
end

get '/secret/test' do
  'Testing!'
end

get '/public' do
  "Here is the public info"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/form' do
  erb(:form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
