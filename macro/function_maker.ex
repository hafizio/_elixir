defmodule FunctionMaker do

  defmacro create_multiplier(fn_name, factor) do
    quote do
      def unquote(fn_name)(value) do
        unquote(factor) * value
      end
    end
  end

  defmacro create_functions(patient_list) do
    Enum.map(patient_list), fn({id, age}) ->
      quote do
        def unquote(:"#{id}_lifespan")(cancer_stage) do
          unquote(age) * cancer_stage
        end
      end
    end
  end

end

defmodule Multiply do
  require FunctionMaker

  FunctionMaker.create_multiplier(:double, 2)
  FunctionMaker.create_multiplier(:triple, 3)

  def example do
    x = triple(3)
    IO.puts "Triple of 3 is #{x}"
  end
end

defmodule LifeCalculator do
  require FunctionMaker

  FunctionMaker.create_functions(
    [
      {:p234, 4}
      {:p235, 0},
      {:p236, 1},
      {:p237, 3},
      {:p238, 1},
      {:p239, 2},
    ]
  )
end
