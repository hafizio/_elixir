defmodule StringReverser do

  @doc """
  String.reverse(string)

  Complexity:

  C(n) = 0 for n = 0 or n = 1
  C(n) = 1 + C(n-1) for n > 1
  """

  def call(string) do
    if String.length(string) <= 1 do
      string
    else
      call(String.slice(string, 1..-1)) <> String.first(string)
    end
  end

end
