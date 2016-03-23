require 'spec_helper'

describe 'puppetdev::prep', :type => :class do

  it do
    should contain_class('puppetdev::prep')
  end

  it do
    should contain_package('git').with_ensure('present')
  end

  it do
    should contain_package('vim-enhanced').with_ensure('present')
  end
end
