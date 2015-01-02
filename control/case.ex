#---
# Excerpted from "Programming Elixir",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/elixir for more book information.
#---
case File.open("case.ex")  do
{ :ok, file } ->
  IO.puts "First line: #{IO.read(file, :line)}"
{ :error, reason } -> 
  IO.puts "Failed to open file: #{reason}"  
end

  
