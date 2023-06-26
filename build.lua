#!/usr/bin/env texlua

module           = "presenter"

docfiledir       = "doc"
typesetfiles     = {"presenter.tex"}

sourcefiledir    = "source"

testfiledir      = "testfiles"

maindir          = "."
builddir         = maindir .. "/build"
testdir          = builddir .. "/test"
typesetdir       = builddir .. "/doc"
-- prepare the test pdf in the doc
function docinit_hook()
    cp("*.pdf", testdir, typesetdir)
    return 0
end