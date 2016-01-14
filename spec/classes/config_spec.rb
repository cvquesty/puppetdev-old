require 'spec_helper'

  describe 'puppetdev::plugins', :type => 'class' do
    let(:title) { 'plugins' }

    it { is_expected.to contain_class('puppetdev::plugins') }

  end
