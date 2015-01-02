#---
# Excerpted from "Programming Elixir",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/elixir for more book information.
#---
defmodule Simple do
  @type atom_list :: list(atom)
  @spec count_atoms(atom_list)  :: non_neg_integer
  def count_atoms(list) do
    length list
  end
end

