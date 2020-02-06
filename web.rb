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

get '/sigoe.pp' do
  redirect 'http://sistemas.na.ifms.edu.br:2693/'
end

get '/sigoe.tl' do
  redirect 'http://sistemas.na.ifms.edu.br:2692/'
end
