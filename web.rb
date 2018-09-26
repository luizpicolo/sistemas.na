require 'sinatra'

get '/' do
   erb :home
end

get '/siai.na' do
  redirect 'http://sistemas.na.ifms.edu.br:2697/'
end

get '/siai.nv' do
  redirect 'http://sistemas.na.ifms.edu.br:20435/'
end
