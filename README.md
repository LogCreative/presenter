# presenter
A LaTeX presentation framework with seamless migration

presenter is a package to create presentations from
regular LaTeX documents without many modifications, which could be natively run by any latest TeX distributions.

Compared to other existing packages, presenter won't need any additional frame or slide environment to split different pages, but use sectioning commands as the natural way to split different points.

**This project is still a Work In Progress (WIP).**

You can see more examples in the [`testfiles/`](testfiles/) folder.

```diff
-\documentclass{article}
+\documentclass{presenter}
\begin{document}
\section{Get Started}
Hello, world!
\end{document}
```

```latex
\documentclass{presenter}
\usepackage{xcolor}
\LoadPresenterBackground{block}
\EditInstance{background/headline}{base}{fill-color=blue!70!green}
\EditInstance{foreground/headline}{base}{style={\Large\color{white}}}
\begin{document}

\paragraph{Some text}

This is the content of this page.

\end{document}
```
