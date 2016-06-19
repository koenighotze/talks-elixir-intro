defmodule AgentTry do

  def runagent do
    {:ok, agent} = Agent.start_link fn -> %{} end

    Agent.update(agent, fn current -> Map.put(current, :foo, "bar") end)

    state = Agent.get(agent, fn s -> s end)

    IO.puts "State is #{inspect state}"
  end

end
