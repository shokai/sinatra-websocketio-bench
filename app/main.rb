
class TestApp < Sinatra::Base
  register Sinatra::WebSocketIO
  io = Sinatra::WebSocketIO

  get '/' do
    "testapp - sinatra-websocketio v#{Sinatra::WebSocketIO::VERSION}"
  end

  io.on :foo do |data, from|
    p data
    puts "#{io.sessions.size} clients connecting."
    push :foo, data
  end

end
