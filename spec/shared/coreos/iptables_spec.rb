shared_examples 'coreos::iptables_spec' do
  describe iptables do
    it { should have_rule('-P INPUT ACCEPT') }
  end
end
