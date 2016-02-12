defmodule KoboiApp do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Cowboy.Dispatch.start

    children = [
    ]

    opts = [strategy: :one_for_one, name: KoboiApp.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
