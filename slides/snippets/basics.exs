defmodule ElixirBasics do
  import Enum, only: [map: 2, each: 2, take: 2]

  def fib do
    unfold( {0, 1},
            fn { n1, n2 } -> { n1, { n2, n1 + n2 }} end
          )
    |> Enum.take(10)
  end

end
