require "rubygems"
require "sinatra"
require "active_record"

class User < ActiveReocrd::Base;end

configure do
  ActiveRecord::Base.establish_connection (
    :adapter => "mysql",
    :host => "myshost",
    :username => "myuser",
    :password => "mypass",
    :database => "somedatabase"
  )
end

get "/users" do
  @user = User.all
  haml :user_index
end

