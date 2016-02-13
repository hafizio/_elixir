defmodule Difference do
  defmacro m_(x) do
    IO.puts "#{inspect(x)}"
    x
  end

  def f_(x)do
    IO.puts "#{inspect(x)}"
    x
  end
end
