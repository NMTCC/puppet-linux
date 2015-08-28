# Defines the TCC package lists
class profiles::nmt::packages::jessie {

  $packlist = [
    'a2ps',
    'abiword',
    'ack-grep',
    'alpine',
    'alsamixergui',
    'apcupsd',
    'apt-transport-https',
    'aria2',
    'audacious',
    'audacious-plugins',
    'audacity',
    'autofs-ldap',
    'awesome',
    'bash',
    'bison',
    'blackbox-themes',
    'blender',
    'bluefish',
    'bpython',
    'browser-plugin-spice',
    'build-essential',
    'byacc',
    'bzr',
    'ca-certificates',
    'cabal-install',
    'caja-open-terminal',
    'cinnamon-desktop-environment',
    'clang',
    'claws-mail',
    'claws-mail-extra-plugins',
    'claws-mail-plugins',
    'clearlooks-phenix-theme',
    'cups',
    'curl',
    'cvs',
    'darktable',
    'dconf-editor',
    'debconf-utils',
    'devscripts',
    'dia',
    'dialog',
    'diffutils',
    'docbook',
    'docbook-utils',
    'easytag',
    'eclipse',
    'ecryptfs-utils',
    'elinks',
    'emacs',
    'enigmail',
    'erlang',
    'expect',
    'extlinux',
    'feh',
    'festival',
    'filezilla',
    'firewalld',
    'flashplugin-nonfree',
    'flex',
    'fluxbox',
    'fonts-dejavu',
    'fonts-lohit-knda',
    'fonts-wqy-zenhei',
    'fortune-mod',
    'fpc',
    'freeglut3-dev',
    'fuseiso',
    'fvwm',
    'gconf-editor',
    'geeqie',
    'genisoimage',
    'gfortran',
    'ghc',
    'ghex',
    'gimp',
    'gimp-data-extras',
    'gimp-plugin-registry',
    'git',
    'git-arch',
    'git-cvs',
    'git-doc',
    'git-el',
    'git-email',
    'git-gui',
    'git-mediawiki',
    'git-svn',
    'gitk',
    'gmt',
    'gnat',
    'gnome',
    'gnome-themes',
    'gnome-tweak-tool',
    'gpick',
    'gpm',
    'gnugo',
    'gnuplot',
    'google-chrome-stable',
    'grace',
    'graphviz',
    'gsl-bin',
    'gtkterm',
    'gtk3-engines-xfce',
    'gwrite',
    'haskell-platform',
    'hexchat',
    'htop',
    'hunspell',
    'icedax',
    'icedove',
    'icedtea-plugin',
    'iceowl-extension',
    'iceweasel',
    'icewm',
    'icewm-gnome-support',
    'imagemagick',
    'inkscape',
    'ipython',
    'irssi',
    'iscan',
    'iscan-data',
    'iscan-plugin-gt-x750',
    'isolinux',
    'isomd5sum',
    'k3b',
    'kbd',
    'kdenlive',
    'kde-standard',
    'kdiff3',
    'keychain',
    'krb5-config',
    'krb5-user',
    'krita',
    'lame',
    'latex2html',
    'latex2rtf',
    'ldap-utils',
    'ldapvi',
    'libany-moose-perl',
    'libav-tools',
    'libbsd-dev',
    'libc6-dev',
    'libcsfml-dev',
    'libfftw3-bin',
    'libgcc1',
    'libglade2-0',
    'libgnome-keyring0',
    'libgpgme11-dev',
    'libgsl0-dev',
    'libgtk-3-bin',
    'liblapacke',
    'libmatekbd4',
    'libmateweather1',
    'libncarg-dev',
    'libnet-ldap-perl',
    'libnet-remctl-perl',
    'libnspr4',
    'libnss3-tools',
    'libpam-gnome-keyring',
    'libpam-krb5',
    'libquota-perl',
    'libreoffice',
    'libreoffice-help-en-us',
    'libsdl2-dev',
    'libtext-markdown-perl',
    'libtorrent-dev',
    'libxm4',
    'libxp6',
    'lightdm-gtk-greeter',
    'linuxdoc-tools',
    'lm-sensors',
    'lsb',
    'lvm2',
    'lynx',
    'manpages-dev',
    'mate-desktop-environment',
    'mc',
    'meld',
    'mercurial',
    'mono-devel',
    'mjpegtools',
    'mklibs-copy',
    'mutt',
    'nasm',
    'nautilus-open-terminal',
    'ncl-ncarg',
    'nethack-console',
    'netpbm',
    'nfs-common',
    'nmap',
    'ntp',
    'octave-signal',
    'openjdk-7-jdk',
    'openssh-client',
    'openssl',
    'optipng',
    'pandoc',
    'paraview',
    'pax',
    'parole',
    'pbzip2',
    'pdfshuffler',
    'pep8',
    'pidgin',
    'plymouth-themes',
    'poppler-utils',
    'postgresql-client',
    'puppet',
    'puppet-lint',
    'pv',
    'pymol',
    'python-apptools',
    'python-ase',
    'python-beautifulsoup',
    'python-gdata',
    'python-kerberos',
    'python-libtorrent',
    'python-lxml',
    'python-markdown',
    'python-matplotlib',
    'python-mechanize',
    'python-molmod',
    'python-mysqldb',
    'python-openssl',
    'python-pexpect',
    'python-phonopy',
    'python-pil.imagetk',
    'python-pmw',
    'python-psycopg2',
    'python-remctl',
    'python-stdeb',
    'python-traitsui',
    'python-scipy',
    'python-setproctitle',
    'python-sqlalchemy',
    'python-twisted',
    'python-virtualenv',
    'python3-dev',
    'python3-examples',
    'python3-lxml',
    'python3-matplotlib',
    'quota',
    'r-base',
    'rcs',
    'rdesktop',
    'remctl-client',
    'rnc-mode',
    'rssh',
    'ruby-gtk2',
    'ruby-gnome2',
    'ruby-ldap',
    'rsync',
    'rxvt-unicode',
    'screen',
    'scribus',
    'sharutils',
    'sl',
    'slrn',
    'smartmontools',
    'snmp',
    'sox',
    'sound-juicer',
    'spamassassin',
    'sshfs',
    'sshpass',
    'sssd',
    'ssss',
    'strace',
    'subversion',
    'synfig',
    'syslinux-common',
    'syslinux-utils',
    'sysvbanner',
    'tccmotd',
    'tcl',
    'texlive',
    'texlive-font-utils',
    'tf',
    'tftp',
    'thunar-volman',
    'tightvncserver',
    'tmux',
    'topal',
    'trang',
    'transmission-cli',
    'transmission-daemon',
    'udftools',
    'udpcast',
    'units',
    'unrar',
    'unzip',
    'vacation',
    'vim-addon-manager',
    'vim-gtk',
    'vim-puppet',
    'vlc',
    'w3m-img',
    'wget',
    'wine',
    'wireshark',
    'wmaker',
    'wodim',
    'x11-apps',
    'xaos',
    'xemacs21',
    'xfce4',
    'xfce4-goodies',
    'xfig',
    'xfwm4-themes',
    'xmlto',
    'xpdf',
    'xsane',
    'xscreensaver',
    'xscreensaver-data-extra',
    'xscreensaver-gl-extra',
    'xscreensaver-screensaver-bsod',
    'xtightvncviewer',
    'xutils-dev',
    'yasm',
    'zip',
    'zsh',
  ]

  $removelist = [
    'python-wicd',
    'wicd',
    'wicd-daemon',
    'wicd-gkt',
  ]

  $backportlist = [
    'fish',
  ]

  Package { ensure => 'installed', require => Exec['apt-update'], }
  package { $packlist : provider => 'apt', }
  package { $removelist : ensure => 'absent', provider => 'apt', }
  package { $backportlist : provider => 'apt', install_options => { '-t' => 'jessie-backports' }, }

}
