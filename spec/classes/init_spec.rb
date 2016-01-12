require 'spec_helper'

describe 'puppetdev', :type => 'class' do

  it { should compile.with_all_deps }

  it { is_expected.to contain_class('puppetdev::config') }
  it { is_expected.to contain_class('puppetdev::vim') }
  it { is_expected.to contain_class('puppetdev::vim_modules') }
  it { is_expected.to contain_class('puppetdev::vimrc') }
  it { is_expected.to contain_class('puppetdev::profile') }

  it "should contain the class" do
    should contain_class('puppetdev')
  end

end
