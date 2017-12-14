require 'spec_helper'
describe 'linux' do
  context 'with default values for all parameters' do
    it { should contain_class('linux') }
  end
end
