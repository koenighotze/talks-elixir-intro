defmodule MetaTest do
  use ExUnit.Case
  use MetaTime

  test "check" do

    time do
        IO.puts "Something"
        :timer.sleep(100)
    end
    
  end

end
