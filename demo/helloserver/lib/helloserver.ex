defmodule Helloserver do
  use Application
  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    {:ok, pid} = MainSupervisor.start_link []
  end
end
