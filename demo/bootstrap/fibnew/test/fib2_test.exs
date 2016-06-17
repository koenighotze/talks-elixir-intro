defmodule Fib2Test do
  use ExUnit.Case

  import Fib2

  test "fib(0)" do
    assert 0 == fib 0
  end

  test "fib(1)" do
    assert 1 == fib 1
  end

  test "fib(30)" do
    assert 832_040 == fib 30
  end

end
