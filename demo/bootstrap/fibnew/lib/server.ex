defmodule FibServer do
  use GenServer

  def handle_call(%{:fib => 3}, _from, current_state) do
    {:reply, "result", current_state}
  end

  def handle_call(%{:hello => name} = args, _from, current_state) do
    {:reply, "Hello #{name}", current_state}
  end
end
