defmodule Double do
  #module can be required, but returns nil insted of []

  defmacro double(x) do
    quote do
      not
      2 * unquote(x)
    end
  end
end
