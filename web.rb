require 'sinatra'

get '/' do
   erb :home
end

get '/siai' do
  redirect 'http://sistemas.na.ifms.edu.br:2697/'
end
