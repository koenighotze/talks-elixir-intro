defmodule MetaTime do
  defmacro time([do: body]) do
   quote do
      s = :os.system_time(:milli_seconds)

      unquote(body)

      f = :os.system_time(:milli_seconds)

      info("#{f - s} millis")
   end
  end

  defmacro __using__(_opts) do
    quote do
      import Logger
      import unquote(MetaTime), only: [time: 1]
    end
  end

end
