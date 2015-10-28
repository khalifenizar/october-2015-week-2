# server.rb

require "sinatra"
require "sinatra/reloader" if development?

enable(:sessions)

credentials = [
  { :user => "nizar", :pass => "swordfish" },
  { :user => "josh", :pass => "password1" },
  { :user => "sebastian", :pass => "ironhack" },
  { :user => "robert", :pass => "p@55w0rd" },
  { :user => "engel", :pass => "jellyfish" }
]

get "/login" do
  erb(:login_form)
end

post "/process_login" do
  user = params[:username]
  pass = params[:password]

  # define variable outside to avoid an errors
  matched_user = nil

  credentials.each do |cred|
    if user == cred[:user] && pass == cred[:pass]
      matched_user = user
    end
  end

  if matched_user != nil
    session[:current_user] = matched_user
    redirect to("/profile")
  else
    redirect to("/login")
  end
end

get "/profile" do
  if session[:current_user] != nil
    @name = session[:current_user]
    erb(:user_profile)
  else
    redirect to("/login")
  end
end
