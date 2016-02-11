defmodule ErrorHandling do
  def safe_division(a, b) do
    try do
      div(a, b)
    rescue
      error -> error
    end
  end

  def throw_on_zero(list) do
    try do
      Enum.each list, fn(number) -> if number == 0, do: throw(number) end
      "Good! No zeros on the list!"
    catch
      number -> "Oops! There was a #{number} on the list!"
    end
  end

  def shortest_living_process do
    IO.puts "Spawning process..."
    spawn_link fn ->
      IO.puts "Process started!"
      exit(1)
    end
  end
end
