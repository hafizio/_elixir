Code.require_file("fizz_buzz.ex")

defmodule Remainder do

  def call(n) do
    {a, b, c} = {rem(n, 3), rem(n, 5), n}
    FizzBuzz.call({a, b, c})
  end

end
