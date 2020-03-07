require 'sinatra'

base_url = 'http://sistemas.na.ifms.edu.br'
paths = [
  ['/sigoe.na', '2697'],
  ['/sigoe.nv', '2696'],
  ['/sigoe.pp', '2693'],
  ['/sigoe.tl', '2692'],
  ['/sigoe.aq', '2691'],
  ['/sigoe.cb', '2690'],
  ['/sigoe.dr', '2689'],
]

get '/' do
  erb :home
end

paths.each do |path|
  get path do
    redirect "#{base_url}:#{path.last}/"
  end
end
