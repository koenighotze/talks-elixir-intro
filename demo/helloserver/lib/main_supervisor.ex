defmodule MainSupervisor do
  use Supervisor
  import Logger

  def start_link(initial_state) do
    result = {:ok, sup_pid} = Supervisor.start_link(__MODULE__, [])

    start_workers(sup_pid, initial_state)

    result
  end

  def start_workers(supervisor_pid, initial_state) do
    {:ok, _} = Supervisor.start_child(supervisor_pid, worker(Hello, [ initial_state ]))
    # {:ok, _} = Supervisor.start_child(supervisor_pid, worker(Chapter17.StackServer, [ ]))
  end

  def init(_) do
    info("Initialising MainSupervisor")
    supervise [], strategy: :one_for_one
  end
end
