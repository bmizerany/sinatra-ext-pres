# ext.rb

module Sinatra
  module PassExampleExt
    get '/admin' do
      pass { erb :admin }
    end

    post '/admin' do
      pass { DB[:admin] << params }
    end
  end
end

# web.rb

class Web < Sinatra::Base
  register Sinatra::PassExampleExt

  post '/admin' do
    # ... Custom ...
  end
end
