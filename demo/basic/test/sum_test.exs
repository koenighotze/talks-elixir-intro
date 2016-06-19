defmodule SumTest do
  use ExUnit.Case

  import Sum

  test "sum empty is 0" do
    assert 0 == sum([])
  end


  test "sum non empty" do
    assert 5 == sum([4, 1])
  end
end
