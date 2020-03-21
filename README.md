[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental) [![Travis build status](https://travis-ci.com/XiangyunHuang/ElegantBookdown.svg?branch=master)](https://travis-ci.com/XiangyunHuang/ElegantBookdown) ![Repo Size](https://img.shields.io/github/repo-size/XiangyunHuang/ElegantBookdown.svg) ![GitHub](https://img.shields.io/github/license/XiangyunHuang/ElegantBookdown.svg)

---


### 目标

1. [ElegantBook](https://github.com/ElegantLaTeX/ElegantBook) 书籍模版的 bookdown 扩展
1. 定制一套 Gitbook 的 CSS 样式

### 在线预览

- https://bookdown.org/xiangyun/ElegantBookdown/ (stable)
- https://xiangyunhuang.github.io/ElegantBookdown/ (latest) 经验表明比较适合国内访问
- https://elegantbookdown.netlify.com/ (unstable)

### 使用环境

1. [Pandoc](https://github.com/jgm/pandoc) 版本 **2.7.2** 及以上
1. TeXLive 2019 及以上，但是推荐 [TinyTeX](https://yihui.name/tinytex/)
1. [R 软件](https://cran.r-project.org/) 版本推荐 **3.6.0** 及以上 
1. R 扩展包 [bookdown](https://github.com/rstudio/bookdown) 版本 **0.11** 及以上

### TODOs

- [ ] 各个 block 转自定义的 sidebar 
   1. 借助 Pandoc 和 Lua 实现自定义的 Pandoc filters
   1. Pandoc 提供的 [divs-and-spans](https://pandoc.org/MANUAL.html#divs-and-spans) [自定义block原型实现](https://github.com/yihui/bookdown-crc/issues/1#issuecomment-449198568)
- [ ] 各个 block 的 CSS 定制，提示、警告等图标
- [ ] 定义、定理、命题作为一类 block 需要自定义 Pandoc filters 支持，练习和例题作为一类
- [ ] note/lstlisting 等环境由 Pandoc filters 过滤时去掉自动在段落首尾添加新行
- [ ] 让列表环境支持 \tightlist
- [ ] note 块 CSS 样式参照 [Fedora 官方文档](https://docs.fedoraproject.org/en-US/fedora/f30/install-guide)


### 致谢

1. 项目 [ElegantBook](https://github.com/ElegantLaTeX/ElegantBook) 的开发者 [Ethan Deng 邓东升](https://ddswhu.me/) 和 [Liam Huang 黄晨成](https://liam.page/)
1. 项目 [bookdown](https://github.com/rstudio/bookdown) 的开发者 [Yihui Xie 谢益辉](https://yihui.name/)
1. 项目 [Pandoc](https://github.com/jgm/pandoc) 的开发者 [John MacFarlane](https://johnmacfarlane.net/)
