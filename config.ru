#gets the gem 'rack'
require 'rack'

#makes a new class called App
class App

  #makes a new method called 'call' which requires a hash argument 'env'
  def call(env)

    #acts like a view
    puts env
    [200, #the http response code - successful request
     {"Content-Type" => "text/html"}, # headers
     ["<body><h1>WWW</h1>Hello World</body>"] # body
    ]
  end
end

#runs the app when it's requested from the server
run App.new
