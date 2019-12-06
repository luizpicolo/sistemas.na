require 'sinatra'

get '/' do
   erb :home
end

get '/sigoe.na' do
  redirect 'http://sistemas.na.ifms.edu.br:2697/'
end

get '/sigoe.nv' do
  redirect 'http://sistemas.na.ifms.edu.br:20435/'
end
