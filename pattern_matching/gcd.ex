defmodule GCD do

  def call(x, 0), do: x
  def call(x, y), do: call(y, rem(x,y))

end
