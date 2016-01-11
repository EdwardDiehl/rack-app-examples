require 'rack'

class RackApp
  def call(env)
    [200, {'Content-Type' => 'application/json'}, ['{ "message" : "Hello!" }']]
  end
end

map '/hello.json' do
  run RackApp.new
end
