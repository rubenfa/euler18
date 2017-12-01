defmodule Euler18 do
  @moduledoc """
  Este módulo tiene las funciones necesarias para solucionar el problema de Euler número 18.
  Más información [aquí](http://www.tinselcity.net/book/aprendizaje/ejercicios/euler18)
  """


  def get_sums([]) do
    0
  end

  def get_sums(pyramid) do
    pyramid
    |> calculate_level(Enum.count(pyramid))
  end

  def calculate_level(pyramid, 1) do
    pyramid
    |> List.first
    |> List.first
  end

  def calculate_level(pyramid, 2) do

    l = pyramid |> Enum.at(1) |> List.first
    r = pyramid |> Enum.at(1) |> List.last

    [calculate_level(pyramid, 1) + l, calculate_level(pyramid, 1)  + r  ]
  end

  def calculate_level(pyramid, 3) do
    l = pyramid |> Enum.at(2) |> List.first
    r = pyramid |> Enum.at(2) |> List.last


    [calculate_level(pyramid, 1) + l, calculate_level(pyramid, 1)  + r  ]
  end






end
