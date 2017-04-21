# Class: gnu_build_system
# ===========================
#
# Full description of class gnu_build_system here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'gnu_build_system':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
class gnu_build_system (
  $gcc_manage   = true,
  $gcc_packages = undef,
  $make_manage  = true,
  $make_package = undef,
){

  if $gcc_manage {
    class { 'gcc':
      gcc_packages => $gcc_packages,
    }
  }

  if $make_manage {
    class { 'make':
      package_name => $make_package,
    }
  }

}
