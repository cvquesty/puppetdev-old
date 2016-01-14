require 'spec_helper'

  describe 'puppetdev::plugins', :type => 'class' do
    let(:title) { 'plugins' }
    let(:params) { { :user => 'questy', :group => 'questy' } }

    it { is_expected.to contain_class('puppetdev::plugins') }

    it do
      is_expected.to contain_vcsrepo('/home/questy/.vim').with(
        'ensure'   => 'present',
        'provider' => 'git',
        'source'   => 'https://github.com/tpope/vim-pathogen',
      )
    end

  end
