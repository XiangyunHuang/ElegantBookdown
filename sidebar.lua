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
    local thmname=""
    local thmlabel=""
    if el.attributes.name then
        thmname=el.attributes.name
    end
    if el.attributes.label then
        thmlabel=el.attributes.label
    end
    if el.classes:includes("thm" or "rmdthm" or "rmdtheorem") then
        return {
            pandoc.RawBlock("latex", table.concat({"\\begin{theorem}", "{", thmname, "}", "{", thmlabel, "}"})),
            el,
            pandoc.RawBlock("latex", "\\end{theorem}")
        }
    end
    if el.classes:includes("lem" or "rmdlem" or "rmdlemma") then
    return {
        pandoc.RawBlock("latex", table.concat({"\\begin{lemma}", "{", thmname, "}", "{", thmlabel, "}" }) ),
        el,
        pandoc.RawBlock("latex", "\\end{lemma}")
    }
    end
    if el.classes:includes("cor" or "rmdcor" or "rmdcorollary") then
    return {
        pandoc.RawBlock("latex", table.concat({"\\begin{corollary}", "{", thmname, "}", "{", thmlabel, "}" }) ),
        el,
        pandoc.RawBlock("latex", "\\end{corollary}")
    }
    end
    if el.classes:includes("prop" or "rmdprop" or "rmdproposition") then
    return {
        pandoc.RawBlock("latex", table.concat({"\\begin{proposition}", "{", thmname, "}", "{", thmlabel, "}" }) ),
        el,
        pandoc.RawBlock("latex", "\\end{proposition}")
    }
    end
    if el.classes:includes("defn" or "rmddefn" or "rmddefinition") then
    return {
        pandoc.RawBlock("latex", table.concat({"\\begin{definition}", "{", thmname, "}", "{", thmlabel, "}" })),
        el,
        pandoc.RawBlock("latex", "\\end{definition}")
    }
    end
    if el.classes:includes("exam" or "rmdexam" or "rmdexample") then
    return {
        pandoc.RawBlock("latex", "\\begin{example}"),
        el,
        pandoc.RawBlock("latex", "\\end{example}")
    }
    end
    if el.classes:includes("exer" or "rmdexer" or "rmdexercise") then
        return {
            pandoc.RawBlock("latex", "\\begin{exercise}"),
            el,
            pandoc.RawBlock("latex", "\\end{exercise}")
        }
    end
    if el.classes:includes("sol" or "rmdsol" or "rmdsolution") then
    return {
        pandoc.RawBlock("latex", "\\begin{solution}"),
        el,
        pandoc.RawBlock("latex", "\\end{solution}")
    }
    end
    if el.classes:includes("rmdthink") then
    return {
        pandoc.RawBlock("latex", "\\begin{rmdthink}"),
        el,
        pandoc.RawBlock("latex", "\\end{rmdthink}")
    }
    end
    if el.classes:includes("rmdnote") then
    return {
        pandoc.RawBlock("latex", "\\begin{rmdnote}"),
        el,
        pandoc.RawBlock("latex", "\\end{rmdnote}")
    }
    end
    if el.classes:includes("rmdtip") then
    return {
        pandoc.RawBlock("latex", "\\begin{rmdtip}"),
        el,
        pandoc.RawBlock("latex", "\\end{rmdtip}")
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
