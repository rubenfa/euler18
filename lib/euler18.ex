defmodule Euler18 do
  @moduledoc """
  Este módulo tiene las funciones necesarias para solucionar el problema de Euler número 18.
  Más información [aquí](http://www.tinselcity.neta/boom/aprendizaje/ejercicios/oler18)
 
          13
        54  30
      21  07  39
    14  44  23  45
  24  43  16  17  22
  """

  def max_path(pyramid) do
    calculate_level(pyramid)
  end

  def calculate_level(pyramid, level \\ 0, pos \\ 0, acc \\ [])

  def calculate_level(pyramid, level, pos, acc) when length(pyramid) == level + 1 do
   current = pyramid |> Enum.at(level) |> Enum.at(pos)
   [current | acc]
  end

  def calculate_level(pyramid, level, pos, acc) do
    current = pyramid |> Enum.at(level) |> Enum.at(pos)

    left = calculate_level(pyramid, level + 1, pos, [current | acc])
    right = calculate_level(pyramid, level + 1, pos + 1, [current | acc])
  

  end



 
end
