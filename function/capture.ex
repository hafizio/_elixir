defmodule Capture do

  def add_two(numbers \\ []) do
    Enum.map(numbers, &(&1 + 2))
  end

  def inspector(numbers) do
    Enum.each(numbers, &IO.inspect(&1))
  end

end
