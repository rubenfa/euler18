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

  def calculate_level(pyramid, level \\ 0, pos \\ 0)

  def calculate_level(pyramid, level, pos) when length(pyramid) == level + 1  do
    pyramid |> Enum.at(level) |> Enum.at(pos)
  end

  def calculate_level(pyramid, level, pos) do
    IO.puts("level: #{level}, pos: #{pos}")

    left = Integer.parse(calculate_level(pyramid, level + 1, pos))
    right = Integer.parse(calculate_level(pyramid, level + 1, pos + 1))
    current = Integer.parse(get_current(pyramid, level, pos))

    IO.puts("left: #{left}, right: #{right}, current: #{current}")

    [left + current, right + current]
  end

  def get_current(pyramid, level, pos) do
    current =  pyramid |> Enum.at(level) |> Enum.at(pos)
    IO.puts("current: #{current}")
    current
  end
  

end
