defmodule Euler18Test do
  use ExUnit.Case
  doctest Euler18

  test "Una pirámide de 2 niveles tiene los resultados correctos" do
    result =  Euler18.calculate_level([[13],[54, 30]])
    IO.inspect(result, charlists: :as_lists)
    assert_result(result, 0, 67)
    assert_result(result, 1, 43)
  end

  test  "Una pirámide de 3 niveles tiene los resultados correctos" do
    result =  Euler18.calculate_level([[13],[54, 30], [21, 7, 39]])
    IO.inspect(result, charlists: :as_lists)    

    assert_result(result, 0, 88)
    assert_result(result, 1, 74)
    assert_result(result, 2, 50)
    assert_result(result, 3, 82)
  end

  test "Una pirámide de 4 niveles devuelve seis resultados (seis caminos)" do
    result =  Euler18.get_sums([[13],[54, 30], [21, 7, 39], [14, 44, 23, 45]])
    IO.inspect(result, charlists: :as_lists)
    assert is_list(result)
    assert Enum.count(result) == 6
  end

  test "Una pirámide de 4 niveles devuelve seis resultados correctos" do
    result =  Euler18.get_sums([[13],[54, 30], [21, 7, 39], [14, 44, 23, 45]])
    IO.inspect(result, charlists: :as_lists)

    assert_result(result, 0, 102)
    assert_result(result, 2, 132)
    assert_result(result, 3, 118)
    assert_result(result, 4, 97)
    assert_result(result, 5, 73)
    assert_result(result, 7, 127)
  end

  test "Una pirámide de 5 niveles devuelve diez resultados (diez caminos)" do
    result =  Euler18.get_sums([[13],[54, 30], [21, 7, 39], [14, 44, 23, 45], [24, 43, 16, 17, 22]])
    IO.inspect(result, charlists: :as_lists)
    assert is_list(result)
    assert Enum.count(result) == 10
  end

  test "Una pirámide de 5 niveles devuelve ocho resultados (ocho caminos)" do
    result =  Euler18.get_sums([[13],[54, 30], [21, 7, 39], [14, 44, 23, 45], [24, 43, 16, 17, 22]])
    IO.inspect(result, charlists: :as_lists)
    assert is_list(result)
    assert Enum.count(result) == 10
  end

  defp assert_result(res, pos, expected_value) do
    assert Enum.at(res, pos) == expected_value
  end

end
