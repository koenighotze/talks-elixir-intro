defmodule Fib do
  def fib(n) do
    cond do
      0 == n -> 0
      1 == n -> 1
      true -> fib(n-1) + fib(n-2)
    end
  end
end
