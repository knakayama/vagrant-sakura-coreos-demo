shared_examples 'coreos::linux_kernel_parameters' do
  describe 'Linux kernel parameters' do
    context linux_kernel_parameter('net.ipv4.tcp_syncookies') do
      its(:value) { should eq 1 }
    end

    context linux_kernel_parameter('kernel.shmall') do
      its(:value) { should eq 2097152 }
    end

    context linux_kernel_parameter('kernel.shmmax') do
      its(:value) { should eq 33554432 }
    end

    context linux_kernel_parameter('net.core.rmem_default') do
      its(:value) { should be <= 2096304 }
    end

    context linux_kernel_parameter('net.core.rmem_max') do
      its(:value) { should be <= 2096304 }
    end

    context linux_kernel_parameter('net.core.wmem_default') do
      its(:value) { should be <= 2096304 }
    end

    context linux_kernel_parameter('net.core.rmem_max') do
      its(:value) { should be <= 2096304 }
    end

    context linux_kernel_parameter('vm.dirty_ratio') do
      its(:value) { should eq 20 }
    end

    context linux_kernel_parameter('vm.dirty_background_ratio') do
      its(:value) { should eq 10 }
    end
  end
end
