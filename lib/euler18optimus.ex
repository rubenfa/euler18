defmodule Euler18Optimus do
  @moduledoc """
  Este módulo tiene las funciones necesarias para solucionar el problema de Euler número 18.
  Más información [aquí](http://www.tinselcity.net/book/aprendizaje/ejercicios/euler18)
  
          13
        54  30
      21  07  39
    14  44  23  45
  24  43  16  17  22
  """

  def get_max_path(pyramid) do

    acc = pyramid |> Enum.count |> initial_acc

    pyramid
    |> Enum.reverse
    |> Enum.reduce(acc, &summer(&1, &2))    
  end

  defp initial_acc(length) do
    for _ <- 1..length, do: 0
  end

  defp summer([a], [b])  do
    a + b
  end

  defp summer(level, acc) do
    level
    |> Enum.zip(acc)
    |> Enum.map(fn({a, b})-> a + b end)
    |> Enum.chunk_every(2, 1, :discard)
    |> Enum.map(&Enum.max/1)
  end
end
