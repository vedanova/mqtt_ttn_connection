defmodule Bus.Callback do

  #removed, no longer supported.
	#def on_publish(data) do
	#	IO.inspect data
	#end

	def on_connect(data) do
		IO.inspect data
	end

	def on_disconnect(data) do
		IO.inspect data
	end

	def on_error(data) do
		IO.inspect data
	end

	def on_info(data) do
		IO.inspect data
	end

	#removed, no longer supported.
	#def on_subscribe(data) do
	#	IO.inspect data
	#end

	#removed, no longer supported.
	#def on_unsubscribe(data) do
	#	IO.inspect data
	#end

	def on_message_received(topic,message) do
		IO.inspect topic
		IO.inspect message
	end

end
