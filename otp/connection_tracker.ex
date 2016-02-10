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

  def crash_server(server, number) when is_number number do
    GenServer.call(server, {:crash_me, number})
  end

  # server API
  def init(:ok) do
    {:ok, HashDict.new}
  end

  def handle_cast({:add, message}, connection_dict) do
    {ip, uuid} = message
    if HashDict.get(connection_dict, message) do
      {:no_reply, connection_dict}
    else
      {:no_reply, HashDict.put(connection_dict, ip, uuid)}
    end
  end

  def handle_call({:search, ip}, _from, connection_dict) do
    {:reply, HashDict.fetch(connection_dict, ip), connection_dict}
  end

  def handle_call({:crash_me, number}, _from, connection_dict) do
    {:reply, div(number,0), connection_dict}
  end

  def handle_info(info, state) do
    IO.puts("Received info message #{inspect(info)}")
    {:no_reply, state}
  end

  def terminate(reason, state) do
    IO.puts("Teminating... reason #{inspect(reason)}")
    {:no_reply, state}
  end

  def code_upgrade(_old_code, state, _extra) do
    # upgrade code
    {:ok, state}
  end
end
