defmodule TimetableStore do
  use GenServer

  def store_timetable(timetable) do
    GenServer.cast(__MODULE__, {:store_timetable, timetable})
  end

  def timetables do
    GenServer.call(__MODULE__, :timetables)
  end

  ### internal

  def start_link do
    {:ok, _pid} = GenServer.start_link(__MODULE__, [], [ name: __MODULE__, debug: [:trace, :statistics] ])
  end

  def handle_cast({:store_timetable, timetable}, current_state) do
    {:noreply, [timetable | current_state]}
  end

  def handle_call(:timetables, _from, current_state) do
    {:reply, {:ok, current_state}, current_state}
  end

end
