VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box       = 'dummy'
  config.vm.box_url   = 'https://github.com/tsahara/vagrant-sakura/raw/master/dummy.box'
  config.ssh.username = 'core'
  config.vm.synced_folder '.', '/home/core', disabled: true

  config.vm.provider :sakura do |sakura, override|
    sakura.server_name            = 'sakura-coreos'
    sakura.access_token           = ENV['ACCESS_TOKEN']
    sakura.access_token_secret    = ENV['ACCESS_TOKEN_SECRET']
    sakura.zone_id                = 'tk1a'         # Tokyo 1 region
    sakura.disk_source_archive    = '112700326142' # CoreOS 367.1.0 (stable)
    sakura.server_plan            = '2002'         # 2Core-2GB
    sakura.sshkey_id              = ENV['SSHKEY_ID']
    override.ssh.private_key_path = File.expand_path(ENV['PRIVATE_KEY_PATH'])
  end
end
