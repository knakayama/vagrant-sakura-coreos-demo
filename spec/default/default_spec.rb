require 'spec_helper'

describe 'coreos' do
  include_examples 'coreos::service_spec'
  #include_examples 'coreos::iptables_spec'
  #include_examples 'coreos::linux_kernel_parameters'
end
