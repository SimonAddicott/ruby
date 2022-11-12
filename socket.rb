require "socket"

socket = TCPSocket.new('192.168.0.15' 8080)

socket.write "GET / HTTP/1.1"
socket.write "\r\n\r\n"

puts socket.recv(50)

