require 'rack'

class RackApp
  def self.call(env)
    [200, {'Content-Type' => 'text/html'}, ['Hello!']]
  end
end

run RackApp