defmodule Parallel do
  def map(collection, fun) do
    runner = self
    Enum.map(collection, fn (el) ->
      spawn_link fn ->
        send runner, {self, fun.(el)}
      end
    end)
    |> Enum.map(fn (pid) ->
      receive do
        {^pid, result} -> result
      end
    end)
  end
end
