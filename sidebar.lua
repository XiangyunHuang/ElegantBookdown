-- https://github.com/jgm/pandoc/issues/2106#issuecomment-371355862
function Span(el)
  if el.classes:includes("todo") then
    return {
      pandoc.RawInline("latex", "\\textcolor{red}{\\textbf{TODO: }"),
      el,
      pandoc.RawInline("latex", "}")
    }
  end
end

function Div(el)
  if el.classes:includes("sidebar") then
    return {
      pandoc.RawBlock("latex", "\\begin{shaded}"),
      el,
      pandoc.RawBlock("latex", "\\end{shaded}")
    }
  end

  if el.classes:includes("rmdwarn") then
    return {
      pandoc.RawBlock("latex", "\\begin{rmdwarn}\\textcolor[RGB]{255,83,59}{\\Large\\textbf{警告}}"),
      el,
      pandoc.RawBlock("latex", "\\end{rmdwarn}")
    }
  end

  if el.classes:includes("rmdnote") then
    return {
      pandoc.RawBlock("latex", "\\begin{rmdnote}\\textcolor[RGB]{251,188,5}{\\Large\\textbf{注意}}"),
      el,
      pandoc.RawBlock("latex", "\\end{rmdnote}")
    }
  end

  if el.classes:includes("rmdtip") then
    return {
      pandoc.RawBlock("latex", "\\begin{rmdtip}\\textcolor[RGB]{81,183,73}{\\Large\\textbf{提示}}"),
      el,
      pandoc.RawBlock("latex", "\\end{rmdtip}")
    }
  end
end
