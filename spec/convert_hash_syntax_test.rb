# require './spec/spec_helper'
# require './lib/convert_hash_syntax'
#
# RSpec.describe 'Convert hash syntax' do
#   it 'converts old syntax to new syntax' do
#     old_syntax = <<~TEXT
#     {
#       :name => 'Alice',
#       :age => 20,
#       :gender => :female,
#     }
#     TEXT
#     expected = <<~TEXT
#     {
#       name: 'Alice',
#       age: 20,
#       gender: :female,
#     }
#     TEXT
#     expect(convert_hash_syntax(old_syntax)).to eq expected
#   end
# end
