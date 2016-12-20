defmodule StringReverser do

  @doc """
  Main method to reverse the string
  String.reverse(string)
  """

  def call(string) do
    if String.length(string) <= 1 do
      string
    else
      call(String.slice(string, 1..-1)) <> String.first(string)
    end
  end

end
