require 'sinatra'
require 'sinatra/reloader'
require 'tilt/erubis'
require_relative 'public_files'

get '/' do
  @list = PublicFiles.list(params['sort'])

  erb :filelist
end

# get "/*" do
#   send file
# end

not_found do
  erb :file_not_found
end