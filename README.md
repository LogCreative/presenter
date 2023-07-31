# presenter
A LaTeX presentation framework with seamless migration

presenter is a package to create presentations from
regular LaTeX documents without many modifications, which could be natively run by any latest TeX distributions.

Compared to other existing packages, presenter won't need any additional frame or slide environment to split different pages, but uses the original sectioning commands as the natural way to split different points.

## Demo

```diff
-\documentclass{article}
+\documentclass{presenter}
\begin{document}
\section{Get Started}
Hello, world!
\end{document}
```

<img width="440" alt="presenter" src="https://github.com/LogCreative/presenter/assets/61653082/e1dd9651-2d7e-4570-b97c-55d0db6cfe81">

```latex
\documentclass{presenter}
\usepackage{xcolor}
\LoadPresenterBackground{block}
\EditPresenterBackground{headline}{fill-color=blue!70!green}
\EditPresenterForeground{headline}{style={\Large\color{white}}}
\begin{document}

\paragraph{Some text}

This is the content of this page.

\end{document}
```

<img width="420" alt="bluepresenter" src="https://user-images.githubusercontent.com/61653082/225827991-a284fcab-ad4a-4da0-becf-d506053f961b.png">

## License

This work may be distributed and/or modified under the
conditions of the [LaTeX Project Public License](http://www.latex-project.org/lppl.txt), either version 1.3
of this license or (at your option) any later version.

This work has the LPPL maintenance status "maintained".

The Current Maintainer of this work is Log Creative.
