require 'spec_helper'
describe 'apache' do
  context 'with default values for all parameters' do
    it { should contain_class('apache') }
  end
end
