defmodule Logic do
  defmacro unless(cond, opts) do
    quote do 
      if(!unquote(cond), unquote(opts))
    end
  end
end
