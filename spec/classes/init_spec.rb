require 'spec_helper'

describe 'puppetdev', :type => 'class' do

  it "should contain the class" do
    should contain_class('puppetdev')
  end
end
