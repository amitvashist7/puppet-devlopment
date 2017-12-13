require 'spec_helper'
describe 'motd' do
  context 'with default values for all parameters' do
    it { should contain_class('motd') }
  end
end
