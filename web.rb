require 'sinatra'

base_url = 'http://sistemas.na.ifms.edu.br'
paths = [
  ['sigoe.na', 'Nova Andradina', '2697'],
  ['sigoe.nv', 'Naviraí',        '2696'],
  ['sigoe.pp', 'Ponta Porã',     '2693'],
  ['sigoe.tl', 'Três Lagoas',    '2692'],
  ['sigoe.aq', 'Aquidauana',     '2691'],
  ['sigoe.cb', 'Corumbá',        '2690'],
  ['sigoe.dr', 'Dourados',       '2689'],
]

get '/' do
  @paths = paths
  @base_url = base_url
  erb :home
end

paths.each do |path|
  get path do
    redirect "#{base_url}:#{path.last}/"
  end
end
