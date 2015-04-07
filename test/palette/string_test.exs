defmodule Palette.StringTest do
  use ShouldI
  use ExUnit.Case

  @subject Palette.String

  with ".wrap" do

    with "no codes" do
      should "do nothing" do
        assert @subject.wrap("Hi!", []) == "Hi!"
      end
    end

    with "one code" do
      should "prepend single code" do
        assert @subject.wrap("Hi!", 31) == "\e[31mHi!\e[0m"
      end
    end

    with "one code passed as a list" do
      should "prepend single code" do
        assert @subject.wrap("Hi!", [21]) == "\e[21mHi!\e[0m"
      end
    end

    with "multiple codes" do
      should "prepend merged codes" do
        assert @subject.wrap("Hi!", [21,31,4]) == "\e[21;31;4mHi!\e[0m"
      end
    end

    should "never have more than one suffix" do
      one_suffix = "Hi!"
                    |> @subject.wrap(21)
                    |> @subject.wrap(31)
                    |> @subject.wrap(4)
                    |> String.ends_with?("Hi!\e[0m")
      assert one_suffix
    end
  end
end
