defmodule Euler18OptimusTest do
  use ExUnit.Case
  doctest Euler18Optimus

  test "Una pirámide de 3 niveles devuelve el resultado correcto" do

    assert_test(
      [[3],
       [7, 4],
       [2, 4, 6],
       [8, 5, 9, 3]],
      23)
  end


  test "Una pirámide de 5 niveles devuelve el resultado correcto" do

    assert_test(
      [[13],
       [54, 30],
       [21, 7, 39],
       [14, 44, 23, 45],
       [24, 43, 16, 17, 22]],
      175)
  end

  test "Una pirámide de 15 niveles devuelve el resultado correcto" do

    assert_test(
      [[75],
       [95, 64],
       [17, 47, 82],
       [18, 35, 87, 10],
       [20,  4, 82, 47, 65],
       [19,  1, 23, 75,  3, 34],
       [88,  2, 77, 73,  7, 63, 67],
       [99, 65,  4, 28,  6, 16, 70, 92],
       [41, 41, 26, 56, 83, 40, 80, 70, 33],
       [41, 48, 72, 33, 47, 32, 37, 16, 94, 29],
       [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14],
       [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57],
       [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48],
       [63, 66,  4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31],
       [4, 62, 98, 27, 23,  9, 70, 98, 73, 93, 38, 53, 60,  4, 23]],
      1074)
  end


  defp assert_test(pyramid, expected) do    
    assert  Euler18Optimus.get_max_path(pyramid) == expected
  end

end
