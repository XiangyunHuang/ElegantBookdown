[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental) [![Travis build status](https://travis-ci.com/XiangyunHuang/ElegantBookdown.svg?branch=master)](https://travis-ci.com/XiangyunHuang/ElegantBookdown) [![AppVeyor build status](https://ci.appveyor.com/api/projects/status/github/XiangyunHuang/ElegantBookdown?branch=master&svg=true)](https://ci.appveyor.com/project/XiangyunHuang/ElegantBookdown) [![Launch binder](http://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/XiangyunHuang/ElegantBookdown/master) [![CRAN status](https://www.r-pkg.org/badges/version/placeholder)](https://cran.r-project.org/package=placeholder) ![Github Version](https://img.shields.io/github/release/XiangyunHuang/ElegantBookdown.svg) ![Repo Size](https://img.shields.io/github/repo-size/XiangyunHuang/ElegantBookdown.svg)

---


<img src="image/elegantbook-cn/elegantbook-cn-0.png" width="50%" height="50%"><img src="image/elegantbook-cn/elegantbook-cn-1.png" width="50%" height="50%">

<img src="image/elegantbook-cn/elegantbook-cn-2.png" width="50%" height="50%"><img src="image/elegantbook-cn/elegantbook-cn-3.png" width="50%" height="50%">

<img src="image/elegantbook-cn/elegantbook-cn-4.png" width="50%" height="50%"><img src="image/elegantbook-cn/elegantbook-cn-5.png" width="50%" height="50%">

<img src="image/elegantbook-cn/elegantbook-cn-6.png" width="50%" height="50%"><img src="image/elegantbook-cn/elegantbook-cn-7.png" width="50%" height="50%">

<img src="image/elegantbook-cn/elegantbook-cn-8.png" width="50%" height="50%"><img src="image/elegantbook-cn/elegantbook-cn-9.png" width="50%" height="50%">

<img src="image/elegantbook-cn/elegantbook-cn-10.png" width="50%" height="50%"><img src="image/elegantbook-cn/elegantbook-cn-11.png" width="50%" height="50%">
<img src="image/elegantbook-cn/elegantbook-cn-12.png" width="50%" height="50%">

### Target

[ElegantBook](https://github.com/ElegantLaTeX/ElegantBook) 书籍模版的 bookdown 扩展

### 在线预览

https://bookdown.org/xiangyun/ElegantBookdown/

### TO DO

- [ ] 在 bookdown 下完美复现原 LaTeX 模版的功能
- [ ] 各个 block 转自定义的 sidebar 借助 Pandoc 和 Lua 实现的 Pandoc filters
   1. Pandoc 提供的 [divs-and-spans](https://pandoc.org/MANUAL.html#divs-and-spans) [自定义block原型实现](https://github.com/yihui/bookdown-crc/issues/1#issuecomment-449198568)
- [ ] 各个 block 的 CSS 定制，提示、警告等图标
- [ ] 定义、定理、命题作为一类 block 需要自定义 Pandoc filters 支持，练习和例题作为一类
- [ ] note/lstlisting 等环境由 Pandoc filters 过滤时去掉自动在段落首尾添加新行
- [ ] 让列表环境支持 \tightlist 

### 致谢

1. [ElegantBook](https://github.com/ElegantLaTeX/ElegantBook) 开发者
1. [bookdown](https://github.com/rstudio/bookdown) 开发者
1. [Pandoc](https://pandoc.org) 开发者
