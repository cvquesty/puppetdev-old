require 'spec_helper'

describe 'puppetdev::post', :type => :class do

  it do
    should contain_class('puppetdev::post')
  end

  it do
    should contain_exec('ownit').with(
      'path'    => '/bin',
    )
  end

  it do
    should contain_exec('groupit').with(
      'path' => '/bin',
    )
  end
end
