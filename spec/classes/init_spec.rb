require 'spec_helper'
describe 'puppetdev' do

  context 'with defaults for all parameters' do
    it { should contain_class('puppetdev') }
  end
end
