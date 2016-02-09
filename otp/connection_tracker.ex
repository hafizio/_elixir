defmodule ConnectionTracker do
  use GenServer

  # client API
  def start_link(opts \\ [])do
    GenServer.start_link(__MODULE__, :ok, opts)
  end

  def add_user(server, message) do
    GenServer.cast(server, {:add, message})
  end

  def search_user(server, ip) do
    GenServer.call(server, {:search, ip})
  end

  # callbacks, server API
  def init(:ok) do
    {:ok, HashDict.new}
  end

  def handle_cast({:add, message), connection_dict) do
    {ip, uuid} = message
    if HashDict.get(connection_dict, message) do
      {:no_reply, connection_dict}
    else
      {:no_reply, HashDict.put(connection_dict, ip, uuid)}
    end
  end
end
