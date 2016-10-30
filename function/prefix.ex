defmodule Prefix do

  def call(first_name) do
    fn(last_name) -> "#{first_name} #{last_name}" end
  end

end
