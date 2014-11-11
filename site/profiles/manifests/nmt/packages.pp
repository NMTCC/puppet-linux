# Defines the TCC package lists
class profiles::nmt::packages {

  case $::operatingsystemmajrelease {
    '19': {
      class { "profiles::nmt::packages::f19": }
    }
    '21': {
      class { "profiles::nmt::packages::f21": }
    }
    default: {}
  }

}