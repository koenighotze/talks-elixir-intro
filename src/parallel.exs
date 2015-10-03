1..1000000
|> Enum.map(&  (Task.async(fn -> &1 * &1 end ) ))
|> Enum.map(&Task.await/1)
