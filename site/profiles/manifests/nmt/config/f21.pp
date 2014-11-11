# class profiles::nmt::config::f21

class profiles::nmt::config::f21 {

  file { '/etc/motd':
    source  => [
      "file:///fs/tcc/motd/motd",
      "file:///etc/motd"
    ],
    mode    => '0644',
    require => [
      Service['autofs'],
      Exec['kinit']
    ]
  }
  file { '/usr/local/share/forge': ensure => 'directory', }

  configdir { 'profile.d': dest => '/etc', }
  configdir { 'boot': dest => '', }
  configdir { 'modules': dest => '/usr/local/share/forge', require => File['/usr/local/share/forge'], }

  nofile { '/etc/sysconfig/desktop': }

  configfile { 'clock': dest => '/etc/sysconfig', }
  configfile { 'lxdm.conf': dest => '/etc/lxdm', }
  configfile { '00-keyboard.conf': dest => '/etc/X11/xorg.conf.d', }
  configfile { 'nmt-reboot': dest => '/etc/cron.d', }
  configfile { 'forge.cron': dest => '/etc/cron.d', }
  configfile { 'puppet.cron': dest => '/etc/cron.d', }
  configfile { 'sendmail.cf': dest => '/etc/mail', }
  configfile { 'Muttrc.local': dest => '/etc', }
  configfile { 'pine.conf': dest => '/etc', }
  configfile { 'rssh.conf': dest => '/etc', }
  configfile { 'khansub.png': dest => '/usr/share/backgrounds', }
  configfile { 'client.conf': dest => '/etc/cups', }
  configfile { 'smartd.conf': dest => '/etc/smartmontools', }
  configfile { '65-iscan.rules': dest => '/lib/udev/rules.d', }
  configfile { 'apcupsd.conf': dest => '/etc/apcupsd', }
  configfile { 'extlinux.conf': dest => '/boot/extlinux', mode => '0640', }

  ln { '/usr/local/bin/pine': target => '/usr/bin/alpine', }
  ln { '/usr/local/bin/perl': target => '/usr/bin/perl', }
  ln { '/usr/local/bin/python': target => '/usr/bin/python', }
  ln { '/usr/share/backgrounds/default.png': target => '/usr/share/backgrounds/khansub.png', require => Configfile['khansub.png'], }
  ln { '/boot/boot': target => '/boot', require => Configdir['boot'], }
  ln { '/usr/local/bin/grub2': target => '/usr/local/share/forge/modules/grub2', require => Configdir['modules'], }
  ln { '/usr/share/xsessions/default.desktop': target => '/usr/share/xsessions/cinnamon.desktop', }
  ln { '/usr/bin/sqlplus': target => '/usr/lib/oracle/12.1/client64/bin/sqlplus', }

  configscript { 'winreboot': dest => '/etc/rc.d/init.d', }
  configscript { 'peripheral_check': dest => '/etc/cron.daily', }
  configscript { 'overlay': dest => '/etc/cron.daily', }
  configscript { 'windisk.sh': dest => '/etc/cron.daily', }
  configscript { 'motd': dest => '/usr/bin', }
  configscript { 'chsh': dest => '/usr/local/bin', }
  configscript { 'set_next_os': dest => '/usr/local/bin', }
  configscript { 'finger-names': dest => '/usr/local/bin', }
  configscript { 'clear_browser_locks': dest => '/usr/local/bin', }
  configscript { 'reset_windows': dest => '/usr/local/bin', }
  configscript { 'reset_linux': dest => '/usr/local/bin', }
  configscript { 'random_machine_reboot': dest => '/usr/local/bin', }
  configscript { 'reboot_to_win': dest => '/usr/local/bin', }
  configscript { 'reapply': dest => '/usr/local/bin', }
  configscript { 'passwd': dest => '/usr/local/bin', }
  configscript { 'jpgmpg': dest => '/usr/local/bin', }
  configscript { 'make_bootusb': dest => '/usr/local/bin', }
  configscript { 'nmt-dracut': dest => '/usr/local/bin', }
  configscript { 'PostLogout': dest => '/etc/lxdm', }
  configscript { 'sfdisk2parted': dest => '/usr/local/bin', }
  configscript { 'killpower': dest => '/etc/apcupsd', }
  configscript { 'reseed': dest => '/usr/local/bin', }
  configscript { 'remreboot': dest => '/usr/local/bin', }
  configscript { 'xorg_user': dest => '/usr/local/bin', }

  # The 'service' type can't pass --force to the systemctl; this has to be done by exec, then.  Yuck.
  # service { 'lxdm': ensure => 'running', enable => 'true', require => Configfile['lxdm.conf'] }
  profiles::nmt::execlnwrong { 'lxdm-enable': command => '/bin/systemctl enable lxdm.service --force', ln => '/etc/systemd/system/display-manager.service', target => '/usr/lib/systemd/system/lxdm.service', require => Configfile['lxdm.conf'] }

  service { 'cups': ensure => 'running', enable => 'true', require => Configfile['client.conf'] }
  service { 'puppet': ensure => 'stopped', enable => 'false', }
  # service { 'transmission-daemon': ensure => 'running', enable => 'true', require => Nofile['/var/lib/transmission/Downloads/Fall2013'], }

  # wget::fetch { 'http://sync.nmt.edu/Spring2014.torrent': destination => '/tmp/Spring2014.torrent', } ->
  # exec { 'ensure transmission':
  #  command => 'transmission-remote -a /tmp/Spring2014.torrent',
  #  unless  => 'transmission-remote -l | grep Spring2014',
  #  path    => '/usr/bin:/usr/sbin:/bin',
  #}

  k5login { '/root/.k5login':
    ensure     => 'present',
    principals => [
      'khan@NMT.EDU',
      'ken@NMT.EDU',
      'dgraham@NMT.EDU',
      'dylan@NMT.EDU',
      'wopr@NMT.EDU',
      'odo@NMT.EDU',
      'kaiba@NMT.EDU',
      'jeanluc@NMT.EDU',
      'floomby@NMT.EDU',
    ]
  }

}