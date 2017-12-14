SPEC = Gem::Specification.new do |s|

  s.name             = "MomLog"
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
  s.autorequire      = "momlog"
  s.test_file        = "test/ts_momlog.rb"
  s.has_rdoc         = true
  s.extra_rdoc_files = ["README"]
  s.add_dependency("BlueCloth", ">=0.0.4")

end
