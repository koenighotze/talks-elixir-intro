defmodule HelloTest do
  use ExUnit.Case

  test "say hello" do
    Hello.start_link

    res = Hello.say_hello("World")

    assert res == "Hello World"
  end

end
