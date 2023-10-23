#!/usr/bin/env texlua

--[[
    In short, to build the project:
      l3build ctan
]]

module           = "presenter"

docfiledir       = "texmf/doc/latex/" .. module
typesetfiles     = {"presenter-doc.tex", "presenter-code.tex"}

sourcefiledir    = "texmf/source/latex/" .. module

-- l3build check
-- Checking will copy the unpack files to the final directory.
testfiledir      = "testfiles"
testsuppdir      = testfiledir .. "/support"
installfiles     = {"*.sty", "*.cls"}
extraunpackdir   = "texmf/tex/latex/" .. module
function checkinit_hook()
    for _,src in pairs(installfiles) do
        cp(src, unpackdir, extraunpackdir)
    end
    return 0
end

-- l3build doc
-- prepare the test pdf in the doc (should be done after 'l3build check')
maindir          = "."
builddir         = maindir .. "/build"
testdir          = builddir .. "/test"
typesetdir       = builddir .. "/doc"
function docinit_hook()
    cp("*.pdf", testdir, typesetdir)
    return 0
end

-- l3build tag x.x.x
-- Simple tagging, copyright information needs manual update.
tagfiles         = {"*.dtx","presenter-code.tex"}
function update_tag(file, content, tagname, tagdate)
    local iso = "%d%d%d%d%-%d%d%-%d%d"
    local ver = "%d.%d.%d"
    if string.match(file, "%.dtx$") then
        return string.gsub(content, "{" .. iso .. "}{" .. ver .. "}", 
        "{" .. tagdate .. "}{" .. tagname .. "}")
    elseif string.match(file, "%.tex$") then
        return string.gsub(content, "\\date{" .. iso .. " \\quad v" .. ver .. "}",
        "\\date{" .. tagdate .. " \\quad v" .. tagname .. "}")
    end
    return content
end
