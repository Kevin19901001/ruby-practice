# encoding: gbk

# 1.2 剖析Ruby的安装：



# 1.2.1 Ruby标准库子目录：
# RbConfig::CONFIG["rubylibdir"]      => "C:/Ruby22-x64/lib/ruby/2.2.0"


# 1.2.2 C语言扩展目录：
# RbConfig::CONFIG["arcdir"]          => "C:/Ruby22-x64/lib/ruby/2.2.0/x64-mingw32"


# 1.2.3 第三方扩展和文件库：
# RbConfig::CONFIG["sitedir"]         => "C:/Ruby22-x64/lib/ruby/site_ruby"
# RbConfig::CONFIG["vendorfir"]       => "C:/Ruby22-x64/lib/ruby/vendor_ruby"


# 1.2.4 gems目录：
# 当用户安装gems包时，未绑定的库文件则会放置于gems目录。
# 这个目录没有在配置数据结构中列出，但通常都和site_ruby在同一级目录。