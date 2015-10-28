# server.rb

require "sinatra"
require "sinatra/reloader" if development?

get "/login" do
  erb(:login_form)
end

post "/process_login" do
  user = params[:username]
  pass = params[:password]

  if user == "nizar" && pass == "swordfish"
    redirect to("/profile")
  else
    redirect to("/login")
  end
end

get "/profile" do
  "PROFILE HTML"
end
