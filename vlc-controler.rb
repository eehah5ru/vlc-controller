require "vlc-client"
#Expects a VLC media player running on 192.168.1.10:9999
#e.g. vlc --extraintf rc --rc-host 192.168.1.10:9999

vlc = VLC::Client.new('192.168.2.101', 5678)
# => "#<VLC::Client:0x0000000229c370 @server=#<VLC::Server:0x0000000229c6e0 @headless=false, @port=9999, @host=\"192.168.1.10\", @pid=10514>, @self_managed=true, @connection=#<VLC::Connection:0x0000000229c258 @port=9999, @host=\"192.168.1.10\", @socket=#<TCPSocket:fd 5>>>"

vlc.connect
# => true

#vlc.play('http://example.org/media.mp3') #play media
# => true

vlc.play

##STDOUT.puts vlc.playing?
# => true

##vlc.fullscreen
# => true
#...

# while true
# 	s = readline.chop
#
# 	vlc.pause if s == "p"
# end
