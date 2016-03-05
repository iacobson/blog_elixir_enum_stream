defmodule ElixirEnumStream do
  def testing_enum(x) do
    list = 1..x
    Enum.filter(list, &(rem(&1,17) == 0))
    |> Enum.map(&(&1 * &1))
    |> Enum.sum
  end

  def testing_stream(x) do
    list = 1..x
    Stream.filter(list, &(rem(&1,17) == 0))
    |> Stream.map(&(&1 * &1))
    |> Enum.sum
  end

  def testing_enum_limited(x) do
    list = 1..x
    Enum.filter(list, &(rem(&1,17) == 0))
    |> Enum.take(10)
    |> Enum.map(&(&1 * &1))
    |> Enum.sum
  end

  def testing_stream_limited(x) do
    list = 1..x
    Stream.filter(list, &(rem(&1,17) == 0))
    |> Stream.take(10)
    |> Stream.map(&(&1 * &1))
    |> Enum.sum
  end
end
