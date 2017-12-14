# Creating your own gems
# 1. Package layout:
# The first of all for creating gem is to orgnize code in a significative directory structure.
# Puts all ruby resource code in the 'lib/' sub directory.
# A readme file is always needed.
# Test cases should be put in the 'test/' directory.
# Any runable script should be put in the 'bin' sub directory.
# Ruby extension ruby source code should be put in 'ext/' directory.
# If gem includes many docs, the docs should be put in the 'docs/' directory.


# 2. The gem specification:
SPEC = Gem::Specification.new do |s|

  s.name             = "MomLOg"
  s.version          = "0.0.1"
  s.author           = "Kevin"
  s.email            = "kevin19901001@163.com"
  s.homepage         = "http://localhost:3000"
  s.platform         = Gem::Platform::RUBY
  s.summary          = "An online diary for families"
  candicates         = Dir.glob("{bin,docs,lib,test}/**/*")
  s.files            = candicates.delete_if do |item|
                         item.include?("CVS") || item.include?("rdoc")
                       end
  s.require_path     = "lib"
  s.autorequired     = "momlog"
  s.test_file        = "test/ts_momlog.rb"
  s.has_rdoc         = true
  s.extra_rdoc_files = ["README"]
  s.add_dependency("BlueCloth", ">=0.0.4")

end
