# server.rb

require "sinatra"
require "sinatra/reloader" if development?

get "/login" do
  erb(:login_form)
end
