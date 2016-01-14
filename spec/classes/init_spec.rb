require 'spec_helper'

describe 'puppetdev', :type => 'class' do

  it { should compile.with_all_deps }

  it { is_expected.to contain_class('puppetdev::prep') }
  it { is_expected.to contain_class('puppetdev::plugins') }
  it { is_expected.to contain_class('puppetdev::post') }

  it "should contain the class" do
    should contain_class('puppetdev')
  end

end
