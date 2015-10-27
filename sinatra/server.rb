# server.rb

require "sinatra"

get "/" do
  erb(:home)
end

get "/hi" do
  "Hello, world!"
end


get "/about" do
  bday = Time.new(1986, 8, 6)
  now = Time.now
  @years_ago = now.year - bday.year

  erb(:author)
end


get "/users/:user_name" do
  @name = params[:user_name]

  erb(:user_profile)
end
