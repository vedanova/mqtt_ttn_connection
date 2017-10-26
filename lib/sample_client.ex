defmodule SampleClient do
  use Hulaaki.Client

  @options [client_id: "iex123", host: "eu.thethings.network", port: 1883, username: "aaa", password: "XXXX"]

  def on_connect_ack(options) do
    IO.inspect options
  end

  def on_subscribed_publish(options) do
    IO.inspect options
  end

  def on_subscribe_ack(options) do
    IO.inspect options
  end

  def on_pong(options) do
    IO.puts 'Pong'
    IO.inspect options
  end

  def on_subscribe([message: message, state: state]) do
    IO.inspect message
  end

  def ttn_subscribe(pid) do
    subs = [id: 24_756, topics: ["vlora-test/devices/lopy1/up"], qoses: [0]]
    subscribe(pid, subs)
    #publish = [id: 24_756, topic: "vlora-test/devices/lopy2/down", qos: 0, message: "Ping", dup: 0, retain: 0]
  end

end
