
class TestApp < Sinatra::Application

  get '/' do
    "testapp - sinatra-websocketio v#{Sinatra::WebSocketIO::VERSION}"
  end

  WebSocketIO.on :foo do |data, from|
    p data
    push :foo, data
  end

end