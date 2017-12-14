defmodule Euler18 do

  def get_max_path(pyramid, level \\ 0, pos \\ 0)

  def get_max_path(pyramid, level, pos) when length(pyramid) == level + 1 do
   get_current(pyramid, level, pos)
  end

  def get_max_path(pyramid, level, pos) do
    current = get_current(pyramid, level, pos)

    left = current + get_max_path(pyramid, level + 1, pos)
    right = current + get_max_path(pyramid, level + 1, pos + 1)

    get_max(left, right)
    
  end

  defp get_max(l, r) when l > r, do: l
  defp get_max(_, r), do: r
  defp get_current(pyramid, level, pos), do: pyramid |> Enum.at(level) |> Enum.at(pos)


end
