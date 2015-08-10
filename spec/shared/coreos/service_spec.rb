shared_examples 'coreos::service_spec' do

  describe service('sshd') do
      it { should be_running('systemd') }
      it { should be_enabled('systemd') }
  end

  describe service('ntpd') do
    it { should be_running.under('systemd') }
    it { should be_enabled('systemd') }
  end

  describe service('timezone.service') do
    it { should be_running }
    it { should be_running.under('systemd') }
    it { should be_enabled('systemd') }
    it { should be_enabled.under('systemd') }
    it { should be_enable.under('systemd') }
    it { should be_enabled.under('upstart') }
  end

  describe service('unko') do
    it { should be_running }
    it { should be_running.under('systemd') }
  end

end
