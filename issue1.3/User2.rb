require "rubygems"
require "yaml"
require "sinatra"
require "active_record"

class User < ActiveRecord::Baes;end

configure do
  database_config = YAML.load_file("./database.yml")
  ActiveRecord::Base.establish_connection(database_config)
end

get "/users" do
  @user = User.all
  haml :user_index
end