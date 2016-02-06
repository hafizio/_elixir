defmodule Mix.Tasks.Meminfo do
  @shortdoc "Get Erlang VM Memory usage information"

  @moduledoc """
    This is the perfect memory information
    scheduler to bla bla bla
  """

  def run(_) do
    meminfo = :erlang.memory
    IO.puts """
    Total             #{meminfo[:total]}
    Processes         #{meminfo[:processes]}
    Processes (used)  #{meminfo[:processes_used]}
    """
  end
end
