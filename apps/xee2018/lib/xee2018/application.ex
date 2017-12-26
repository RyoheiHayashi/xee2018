defmodule Xee2018.Application do
  @moduledoc """
  The Xee2018 Application Service.

  The xee2018 system business domain lives in this application.

  Exposes API to clients such as the `Xee2018Web` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(Xee2018.Repo, []),
    ], strategy: :one_for_one, name: Xee2018.Supervisor)
  end
end
