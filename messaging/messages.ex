defmodule Me do
  def hello do
    IO.puts "world"
  end

  def start_link do
    { :ok, spawn_link(fn -> wait_for_messages() end ) }
  end

  defp wait_for_messages() do
    receive do
      {"ping", caller} ->
        IO.puts "You sent a ping"
        send caller, "pong"
        wait_for_messages()

      {"pong", caller} ->
        IO.puts "You sent a pong"
        send caller, "ping"
        wait_for_messages()

      {_, caller} ->
        IO.puts "^*&*(&)"
        send caller, "nonsense"
        wait_for_messages()

    end
  end
end
