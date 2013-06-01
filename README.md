# Kaprekar

Finding [Kaprekar Numbers](https://en.wikipedia.org/wiki/Kaprekar_number) -- a Ruby kata!

> In mathematics, a Kaprekar number for a given base is a non-negative
  integer, the representation of whose square in that base can be
  split into two parts that add up to the original number again. For
  instance, 45 is a Kaprekar number, because 45 squared is 2025 and 20+25 =
  45. The Kaprekar numbers are named after D. R. Kaprekar.

## Installation

    $ git clone git@github.com:tamouse/kaprekar_kata

## Usage

Running spec tests:

    $ rake spec

Running benchmarks:

    $ rake benchmarks

## Contributing

1. Fork it!
2. Create a branch for your implementation.
3. Add your examples in a module under lib/kaprekar. Use your handle/name to identify it:

        module Kaprekar
		  module YourName
		    module_function # this is so the functions can be called directly
            def kaprekar1?(n)
			  # your code
			  # returns true if the number is a Kaprekar
			end
		  end
		end
		
    Doing this will let your implementation be automatically included in the rspec tests and the benchmarks.

4. Issue a pull request.
