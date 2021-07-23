require 'sinatra'
require 'sinatra/reloader'
require 'tilt/erubis'
require_relative 'public_files'

get '/' do
  @list = PublicFiles.list(params['sort'])

  erb :filelist
end