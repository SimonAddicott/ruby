require 'socket'
socket = TCPServer.new('0.0.0.0', 8080)
while(client = socket.accept)
	puts "New client! #{client}"
	client.write("Hello Simon is cool!")
	client.close
end
