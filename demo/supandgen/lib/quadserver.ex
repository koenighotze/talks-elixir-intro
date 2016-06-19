defmodule QuadServer do
  use GenServer

  ### client

  def start_link do
    GenServer.start_link(__MODULE__, [], [ name: __MODULE__, debug: [:trace, :statistics] ])
  end

  def quad_a_list(list) do
    GenServer.call(__MODULE__, {:quad, list})
  end

  def quad_a_list_async(list) do
    GenServer.call(__MODULE__, {:quad_async, list})
  end

  ### server
  def handle_call({:quad, list}, _from, current_state) do
    res = list |> calc_quad

    {:reply, res, current_state}
  end

  def handle_call({:quad_async, list}, _from, current_state) do
    res = list |> calc_quad

    {:reply, res, current_state}
  end

  defp calc_quad(list) do
    list
    |> Enum.map(&quad/1)
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
