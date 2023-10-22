#!/usr/bin/env texlua

module           = "presenter"

docfiledir       = "texmf/doc/latex/" .. module
typesetfiles     = {"presenter-doc.tex"}

sourcefiledir    = "texmf/source/latex/" .. module

testfiledir      = "testfiles"
testsuppdir      = testfiledir .. "/support"

maindir          = "."
builddir         = maindir .. "/build"
testdir          = builddir .. "/test"
typesetdir       = builddir .. "/doc"
-- prepare the test pdf in the doc
function docinit_hook()
    cp("*.pdf", testdir, typesetdir)
    return 0
end

-- Simple tagging, copyright information needs manual update.
tagfiles         = {"*.dtx","presenter-doc.tex"}
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

installfiles   = {"*.sty", "*.cls"}
extraunpackdir = "texmf/tex/latex/" .. module

-- Checking will copy the unpack files to the final directory.
function checkinit_hook()
    for _,src in pairs(installfiles) do
        cp(src, unpackdir, extraunpackdir)
    end

    return 0
end
