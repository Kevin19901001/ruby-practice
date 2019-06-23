# encoding: gbk

# 1.4 易用的Ruby工具和应用程序：
# ruby：解释器
# irb：Ruby交互式解释器
# rdoc和ri：Ruby文档工具
# rake：Ruby的make工具，一套任务管理实用工具
# gem：一套Ruby库和应用程序包管理实用工具
# erb：一套模板系统
# testrb：一个用于测试框架的高级工具



# 1.4.1 解释器的命令行开关：
# 1. 语法检查：（-c）
# 2. 开启告警：（-w）
# 3. 执行字符串脚本：（-E）
# 4. 行模式运行：（-L）
# 5. 请求名称文件和扩展：（-rname）
# 6. 运行在详细模式之下：（--verbose）
# 7. 打印Ruby版本信息：（--version）
# 8. 打印帮助信息：（--help）
# 9. 合并使用开关：（-cw）


# 1.4.2 走进Ruby的交互式解释器irb：
# >irb --simple-prompt
# >>
# >>100 * 9 / 5 + 32
# >>212

# >>irb --simple-prompt --noecho
# >>2 + 2
# >>puts "Hi"
# >>"Hi"


# 1.4.3 ri和RDoc：
# >ri String#upcase


# 1.4.4 任务管理实用工具：Rake：
# rake admin:clean_tmp


# 1.4.5 使用gem命令安装组件包：
# >gem install prawn
# >>require "prawn"
# >>true