# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  # config.order = 'random'
end


GOOD_KAPREKAR = [1, 9, 45, 55, 99, 297, 703, 999 , 2223, 2728, 4879,
                 4950, 5050, 5292, 7272, 7777, 9999 , 17344, 22222,
                 38962, 77778, 82656, 95121, 99999, 142857, 148149,
                 181819, 187110, 208495, 318682, 329967, 351352,
                 356643, 390313, 461539, 466830, 499500, 500500,
                 533170]


NOT_KAPREKAR = [-10, -9, -1, 0, 5, 7, 10, 100, 122, 1000, 1004, 10_000, 100_000, 1_000_000]
