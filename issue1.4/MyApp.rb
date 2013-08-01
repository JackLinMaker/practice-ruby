require "./default.yml"
require "rest_client"

module MyApp
  module Client
    extend self
      
      def authemticate(user, password)
        RestClient.post(MyApp::Config::Web[:login_url],
          :user => user, :password => password)
      end
  end
end

MyApp::Client.authenticate('my_user', 'seekrit')
