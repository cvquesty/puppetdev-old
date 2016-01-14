require 'spec_helper'

  describe 'puppetdev::config', :type => 'class' do
    let(:title) { 'config' }
    let(:params) { { :user => 'questy', :group => 'questy' } }

    it { is_expected.to contain_class('puppetdev::config') }

    it do
      is_expected.to contain_vcsrepo('/home/questy/.vim').with(
        'ensure'   => 'present',
        'provider' => 'git',
        'source'   => 'https://github.com/tpope/vim-pathogen',
      )
    end

  end
