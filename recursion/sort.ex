defmodule Sort do
  import Integer

  def call(n) when is_odd(n) do
    "Odd"
  end

  def call(n) when is_even(n) do
    "Even"
  end

end
