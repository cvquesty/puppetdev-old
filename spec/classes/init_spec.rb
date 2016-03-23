require 'spec_helper'
describe 'puppetdev' do
let :facts do
  {
    :concat_basedir => '/foo'
  }
end

  context 'The following classes should be present in the catalog' do

    it do
      is_expected.to contain_class('puppetdev::prep')
      is_expected.to contain_class('puppetdev::plugins')
      is_expected.to contain_class('puppetdev::post')
    end

    it do
      should compile
    end

  end
end
