-- https://github.com/jgm/pandoc/issues/2106#issuecomment-371355862
function Span(el)
  if el.classes:includes("todo") then
    return {
      pandoc.RawInline("latex", "\\textcolor{red}{\\textbf{TODO: }"),
      el,
      pandoc.RawInline("latex", "}")
    }
  end

  if el.classes:includes("main") then
    return {
      pandoc.RawInline("latex", "\\textcolor{main}{"),
      el,
      pandoc.RawInline("latex", "}")
    }
  end

  if el.classes:includes("second") then
    return {
      pandoc.RawInline("latex", "\\textcolor{second}{"),
      el,
      pandoc.RawInline("latex", "}")
    }
  end

  if el.classes:includes("third") then
    return {
      pandoc.RawInline("latex", "\\textcolor{third}{"),
      el,
      pandoc.RawInline("latex", "}")
    }
  end
end

function Div(el)
  if el.classes:includes("sidebar") then
    return {
      pandoc.RawBlock("latex", "\\begin{kframe}"),
      el,
      pandoc.RawBlock("latex", "\\end{kframe}")
    }
  end

  if el.classes:includes("note") then
    return {
      pandoc.RawBlock("latex", "\\begin{note}"),
      el,
      pandoc.RawBlock("latex", "\\end{note}")
    }
  end

  if el.classes:includes("definition") then
    return {
      pandoc.RawBlock("latex", "\\begin{definition}"),
      el,
      pandoc.RawBlock("latex", "\\end{definition}")
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

  if el.classes:includes("conclusion") then
    return {
      pandoc.RawBlock("latex", "\\begin{conclusion}"),
      el,
      pandoc.RawBlock("latex", "\\end{conclusion}")
    }
  end

  if el.classes:includes("example") then
    return {
      pandoc.RawBlock("latex", "\\begin{example}"),
      el,
      pandoc.RawBlock("latex", "\\end{example}")
    }
  end

  if el.classes:includes("solution") then
    return {
      pandoc.RawBlock("latex", "\\begin{solution}"),
      el,
      pandoc.RawBlock("latex", "\\end{solution}")
    }
  end

  if el.classes:includes("problem") then
    return {
      pandoc.RawBlock("latex", "\\begin{problem}"),
      el,
      pandoc.RawBlock("latex", "\\end{problem}")
    }
  end

  if el.classes:includes("warning") then
    return {
      pandoc.RawBlock("latex", "\\begin{kframe} \\textbf{警告}"),
      el,
      pandoc.RawBlock("latex", "\\end{kframe}")
    }
  end
end
