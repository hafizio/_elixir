defmodule HanoiTower do

  @moduledoc """
  args:

  src = [1, 2, 3, 4, 5]
  dst = []
  aux = []

  result:
  %{
    src: [],
    dst: [],
    src: [1, 2, 3, 4, 5]
  }

  complexity:
  C(1) = 1 for n = 1
  C(n) = 1 + 2 ∙ C(n-1) for n > 1
  """

  def call(src \\ [], dst \\ [], aux \\ []) do
    IO.puts "hello"
  end

end
