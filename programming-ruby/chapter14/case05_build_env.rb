# Build environment:
require 'rbconfig'
include RbConfig
p CONFIG["host"]	# => "x86_64-pc-linux-gnu"
p CONFIG['libdir']	# => "/usr/lib"
