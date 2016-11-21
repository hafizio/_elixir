defmodule FindSum do

  def call([], sum), do: false

  def call([], sum), do: false

  def call([head | tail], sum) do
    if Enum.member?(head, sum), do: true
    call(tail, sum - head)
  end

end
