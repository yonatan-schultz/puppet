require 'spec_helper'
describe 'ns' do

  context 'with defaults for all parameters' do
    it { should contain_class('ns') }
  end
end
