require 'sinatra'
#require 'slim'
#require 'sass'
require './base.rb'
#require 'postgresql'

get('/styles.css'){ scss :styles }

get '/' do
  erb :home
end

get '/Door' do
	erb :door
end

get '/Door2' do 
	@door = Doors.new
	if @door.outcome == "ACCESS"
		erb :access
	elsif @door.outcome =="DENIED"
		erb :denied
	end
end

get '/Mirror' do
	erb :mirror
end

get '/Window' do
	erb :window
end

get '/Window2' do 
	erb :window2
end

__END__

@@access
<P> Granted ACCESS!! Click on the Mirror Tab to continue. </P>
<img src="http://i.imgur.com/aNNg1Xn.jpg" width="500" height="500">

@@denied
<p> DENIED!! Keep on pressing "ctrl + r" untill you're granted ACCESS! </p>
<img src="http://i.imgur.com/S9GOHui.jpg">
