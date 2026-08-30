#set text(lang: "zh")
#import "definitions.typ": indent, ph

#set page(
  paper: "a4",
  margin: 72pt,
)
#set text(font: "Source Han Sans SC", size: 12pt)

#set figure(supplement: "表")

#set heading(numbering: (..nums) => {
  if nums.len() == 1 {
    numbering("一、", nums.at(0))
  } else if nums.len() == 2 {
    numbering("（一）", nums.at(1))
  } else if nums.len() == 3 {
    numbering("（1）", nums.at(2))
  } else {
    numbering("1）", nums.at(3))
  }
})
#show heading: it => {
  if it.level == 1 {
    align(center, block(spacing: 1.5em, text(size: 22pt, weight: "bold", it)))
  } else if it.level == 2 {
    block(above: 1.2em, below: 0.6em, text(size: 16pt, weight: "bold", it))
  } else if it.level == 3 {
    block(above: 1em, below: 0.5em, text(size: 14pt, weight: "bold", it))
  } else {
    block(above: 0.9em, below: 0.4em, text(size: 13pt, weight: "bold", it))
  }
}
#show figure.where(kind: table): set figure.caption(position: top)
#show figure.where(kind: table): set figure(supplement: [表])

#v(8em)
#align(center)[
  #text(size: 26pt, weight: "medium")[机械制造技术基础课程设计]\

  #text(size: 26pt, weight: "medium")[说明书]

  #v(2em)
  #text(size: 22pt, weight: 700, stroke: 0.8pt)[设计题目:]
  #text(size: 22pt, weight: "medium")[法兰盘的机械加工工艺规程及]\

  #text(size: 22pt, weight: "medium")[夹具设计]
]

#v(15em)
#align(center)[
  #text(size: 22pt)[设 计 者：]\
  #v(2em)
  #text(size: 22pt)[指导教师：]\
  #v(3em)
  #text(size: 22pt)[X年X月X日]
]

#pagebreak()

// 从目录页起，页脚居中显示页码（封面不编号），并将页码重置为 1
#set page(
  numbering: "1",
  footer: align(center)[#context counter(page).display()],
)
#counter(page).update(1)
#set text(font: "SimSun", size: 12pt, weight: "medium")
#v(2em)
#outline(depth: 3, indent: 1em)
#pagebreak()

#align(center)[
  #text(size: 22pt, weight: "bold")[序#h(1em)言]
]
#indent 机械制造工艺学课程设计是在我们学完大学全部基础课、专业基础课以及大部分专业课之后进行的。这是我们理论联系实际的训练，因此，它在我们四年的大学生活中占有重要的地位。\
#indent 就我个人而言，我希望通过这次课程设计对自己未来将从事的工作进行一次适应性训练，从中锻炼自己分析问题、解决问题的能力，为今后参加祖国的“四化”建设打下良好的基础。\
#indent 由于能力有限，设计尚有许多不足之处，恳请各位老师给予指教。

#include "chapters/parts_analysis.typ"
#include "chapters/process_procedure_design.typ"