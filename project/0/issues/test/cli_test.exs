#---
# Excerpted from "Programming Elixir",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/elixir for more book information.
#---
defmodule CliTest do
  use ExUnit.Case

  test "nil returned by option parsing with -h and --help options" do
    assert Issues.CLI.parse_args(["-h",     "anything"]) == :help
    assert Issues.CLI.parse_args(["--help", "anything"]) == :help
  end

  test "three values returned if three given" do
    assert Issues.CLI.parse_args(["user", "project", "99"]) == { "user", "project", 99 }
  end

  test "count is defaulted if two values given" do
    assert Issues.CLI.parse_args(["user", "project"]) == { "user", "project", 4 }
  end
end
