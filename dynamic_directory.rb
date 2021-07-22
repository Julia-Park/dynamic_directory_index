require 'sinatra'
require 'sinatra/reloader'
require 'tilt/erubis'

get '/' do
  @list = Dir.children("public").select { |fname| File.ftype("public/#{fname}") == "file" }
  @list.sort_by! { |name| name.downcase }

  erb :filelist
end