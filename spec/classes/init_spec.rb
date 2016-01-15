require 'spec_helper'

describe 'puppetdev', :type => 'class' do

  it { should compile.with_all_deps }

  it "should contain the class" do
    should contain_class('puppetdev')
  end

end
