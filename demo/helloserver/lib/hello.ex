defmodule Hello do
  use GenServer

  import Logger

  def start_link(_state) do
    info("Initialising Hello")
    {:ok, _pid} = GenServer.start_link(__MODULE__, [], [ name: __MODULE__, debug: [:trace, :statistics] ])
  end

  def say_hello(name) do
    GenServer.call(__MODULE__, {:hello, name})
  end

  #### internal

  def handle_call({:hello, name}, _from, current_state) do
    {:reply, "Hello #{name}", [name | current_state]}
  end

  def handle_call(:people_met, _from, current_state) do
    {:reply, current_state, current_state}
  end
end
