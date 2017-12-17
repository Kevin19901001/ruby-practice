# It is easy to get position of ruby installation. To get these information, just load ruby lib 'rbconfig'
# in the irb session. Rbconfig is a interface, many config information about ruby installation can be got
# through rbconfig.
# egg:
# $ irb --simple-prompt -rrbconfig

# egg: to get the installation directory of ruby executable file:
# >> RbCnfig::CONFIG["bindir"]

# RbConfig::CONFIG is a quote hash constant, it is used to save configuration information in Ruby.

# The other configuration information can be got in the same way, just use another word to replace 'bindir
# '.


# egg:
# Ruby standard library directory                  => rubylibdir
# Ruby command toll                                => bindir
# Specific architecture extension and lib files    => archdir
# Extension and lib files of user or third-party   => sitedir
# Extemsion and lib files of third-party           => vendordin
# Ruby language extension od user(written by Ruby) => sitlibdir
# Ruby language extension of user(written by C)    => sitearchdir


# egg: Ruby standard library sub directory:
# >> RbConfig::CONFIG["rubylibdir"]
# In the rubylibdir, there are program files written by Ruby. These files supply function of standard lira
# ry, if these function were needed, require them in program.

# egg: C language extension directory:
# >> RbConfig::CONFIG["archdir"]

# egg: ruby_site and vendor_ruby directory:
# >> RbConfig::CONFIG["sitedir"]
# >> RbConfig::CONFIG["vendordir"]
