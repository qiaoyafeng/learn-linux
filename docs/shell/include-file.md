# Shell 文件包含

和其他语言一样，Shell 也可以包含外部脚本。这样可以很方便的封装一些公用的代码作为一个独立的文件。

Shell 文件包含的语法格式如下：

```bash
. filename   # 注意点号(.)和文件名中间有一空格

或

source filename
```

创建两个 shell 脚本文件。

include-file.sh 代码如下：

```bash
#!/bin/bash
# author: qiaoyafeng

# 使用 . 引用文件
. ./variable.sh

# 或者使用 source 引用文件
# source ./variable.sh

echo "学习网址为： $myUrl"
```


------

[Shell 教程](shell.md)