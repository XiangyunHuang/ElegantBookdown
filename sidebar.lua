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
      pandoc.RawBlock("latex", "\\begin{shaded}\\par\\noindent\\textcolor[RGB]{234,67,53}{\\textbf{警告}}"),
      el,
      pandoc.RawBlock("latex", "\\end{shaded}")
    }
  end
  if el.classes:includes("rmdnote") then
    return {
      pandoc.RawBlock("latex", "\\begin{shaded}\\par\\noindent\\textcolor[RGB]{251,188,5}{\\textbf{注意}}"),
      el,
      pandoc.RawBlock("latex", "\\end{shaded}")
    }
  end
  if el.classes:includes("rmdtip") then
    return {
      pandoc.RawBlock("latex", "\\begin{shaded}\\par\\noindent\\textcolor[RGB]{52,168,83}{\\textbf{提示}}"),
      el,
      pandoc.RawBlock("latex", "\\end{shaded}")
    }
  end
end


function Div(el)
    local thmname=""
    local thmlabel=""
    if el.attributes.name then
        thmname=el.attributes.name
    end
    if el.attributes.label then
        thmlabel=el.attributes.label
    end

    if el.classes:includes("thm") then
        return {
            pandoc.RawBlock("latex", table.concat({"\\begin{theorem}", "{", thmname, "}", "{", thmlabel, "}"})),
            el,
            pandoc.RawBlock("latex", "\\end{theorem}")
        }
    end

    if el.classes:includes("defn") then
    return {
        pandoc.RawBlock("latex", table.concat({"\\begin{definition}", "{", thmname, "}", "{", thmlabel, "}" })),
        el,
        pandoc.RawBlock("latex", "\\end{definition}")
    }
    end
    if el.classes:includes("exam") then
    return {
        pandoc.RawBlock("latex", "\\begin{example}"),
        el,
        pandoc.RawBlock("latex", "\\end{example}")
    }
    end
    if el.classes:includes("exer") then
        return {
            pandoc.RawBlock("latex", "\\begin{exercise}"),
            el,
            pandoc.RawBlock("latex", "\\end{exercise}")
        }
    end
    if el.classes:includes("sol") then
    return {
        pandoc.RawBlock("latex", "\\begin{solution}"),
        el,
        pandoc.RawBlock("latex", "\\end{solution}")
    }
    end
    if el.classes:includes("lem") then
    return {
        pandoc.RawBlock("latex", table.concat({"\\begin{lemma}", "{", thmname, "}", "{", thmlabel, "}" }) ),
        el,
        pandoc.RawBlock("latex", "\\end{lemma}")
    }
    end
    if el.classes:includes("cor") then
    return {
        pandoc.RawBlock("latex", table.concat({"\\begin{corollary}", "{", thmname, "}", "{", thmlabel, "}" }) ),
        el,
        pandoc.RawBlock("latex", "\\end{corollary}")
    }
    end
    if el.classes:includes("prop") then
    return {
        pandoc.RawBlock("latex", table.concat({"\\begin{proposition}", "{", thmname, "}", "{", thmlabel, "}" }) ),
        el,
        pandoc.RawBlock("latex", "\\end{proposition}")
    }
    end

    if el.classes:includes("twocols") then
    return {
        pandoc.RawBlock("latex", "\\begin{multicols}{2}"),
        el,
        pandoc.RawBlock("latex", "\\end{multicols}")
    }
    end
    if el.classes:includes("threecols") then
    return {
        pandoc.RawBlock("latex", "\\begin{multicols}{3}"),
        el,
        pandoc.RawBlock("latex", "\\end{multicols}")
    }
    end
    if el.classes:includes("fourcols") then
    return {
        pandoc.RawBlock("latex", "\\begin{multicols}{4}"),
        el,
        pandoc.RawBlock("latex", "\\end{multicols}")
    }
    end
end

function Image (el)
    if el.classes:includes("center") then
    return {
        pandoc.RawInline('latex', '\\hfill\\break{\\centering'),
        el,
        pandoc.RawInline('latex', '\\par}')
    }
    end
end
