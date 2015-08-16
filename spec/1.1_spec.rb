require_relative 'spec_helper'
require_relative '../chapter1/1.1'

describe 'string' do
  it 'has unique elements' do
    str = 'abcdefghijklmnopqrstuvwxyz'
    str_array = str.split("")
    expect(find_unique_with_data_structures?(str_array)).to eq(true)
  end

  it 'has unique elements' do
    str = 'zyxwvutsrqponmlkjighfedcba'
    expect(find_unique_without_data_structures?(str)).to eq(true)
  end

  it 'does not have unique elements' do
    str = 'aabbccdd'
    str_array = str.split("")
    expect(find_unique_with_data_structures?(str_array)).to eq(false)
  end

  it 'does not have unique elements' do
    str = 'ddccbbaa'
    expect(find_unique_without_data_structures?(str)).to eq(false)
  end
end