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
end
