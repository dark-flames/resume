#import "../libs.typ": *
#import "../chicv.typ": *

#let pub(env) = {
  multiLang(env, en: [== Publications & Talks], cn: [== 论文发表 & 演讲])
  bibliography("../pub.bib", title: none, full: true)  
}
