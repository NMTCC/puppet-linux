class profiles::nmt::rsync::f19::maple {
  rsync::get { 'maple':
    source => "update.nmt.edu::F19-maple",
    path => '/',
    recursive => true,
    links => true }
}