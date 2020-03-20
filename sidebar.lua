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
  if el.classes:includes("lstlisting") then
    return {
      pandoc.RawBlock("latex", "\\begin{lstlisting}"),
      el,
      pandoc.RawBlock("latex", "\\end{lstlisting}")
    }
  end
  if el.classes:includes("note") then
    return {
      pandoc.RawBlock("latex", "\\begin{note}"),
      el,
      pandoc.RawBlock("latex", "\\end{note}")
    }
  end
  if el.classes:includes("remark") then
    return {
      pandoc.RawBlock("latex", "\\begin{remark}"),
      el,
      pandoc.RawBlock("latex", "\\end{remark}")
    }
  end
  if el.classes:includes("introduction") then
    return {
      pandoc.RawBlock("latex", "\\begin{introduction}"),
      el,
      pandoc.RawBlock("latex", "\\end{introduction}")
    }
  end
end
