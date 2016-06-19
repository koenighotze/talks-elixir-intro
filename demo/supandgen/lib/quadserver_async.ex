defmodule QuadServerAsync do
  use GenServer
  import Logger

  def init(_) do
    info("Initialising QuadServerAsync")
    {:ok, []}
  end

  ### client

  def start_link do
    GenServer.start_link(__MODULE__, [], [ name: __MODULE__, debug: [:trace, :statistics] ])
  end

  def quad_a_list_async(list) do
    GenServer.call(__MODULE__, {:quad_async, list})
  end

  ### server
  def handle_call({:quad_async, list}, _from, current_state) do
    res = list |> calc_quad_async

    {:reply, res, current_state}
  end

  defp quad(n) do
    :timer.sleep(100)
    n * n
  end

  defp calc_quad_async(list) do
    list
    |> Enum.map( &( Task.async( fn -> quad(&1) end)  ) )
    |> Enum.map(&(Task.await(&1)))
  end
end
