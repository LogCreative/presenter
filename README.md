# presenter
A LaTeX presentation framework with seamless migration

presenter is a package to create presentations from
regular LaTeX documents without many modifications, which could be natively run by any latest TeX distributions.

Compared to other existing packages, presenter won't need any additional frame or slide environment to split different pages, but uses sectioning commands as the natural way to split different points.

**This project is still a Work In Progress (WIP).**

## Usage

Since it is still in the development state, you need to unpack the dtx files before using the package. Use the command

```
l3build unpack
```
or
```
cd source
latex presenter.ins
```
to get the unpacked style files as the dependency of your document. Or you could install the tds zip `presenter.tds.zip` from the release section to your computer for global use.

## Examples

You can see more examples in the [`testfiles/`](testfiles/) folder. Refer to the documentation for more instructions.

## Documentation

The test results from [`testfiles/`](testfiles/) are used in the documentation, thus to compile the documentation, the check should be run first.
```
l3build check
l3build doc
```

## Showwheel

```diff
-\documentclass{article}
+\documentclass{presenter}
\begin{document}
\section{Get Started}
Hello, world!
\end{document}
```

<img width="440" alt="presenter" src="https://user-images.githubusercontent.com/61653082/225827335-07178eea-95af-4bed-adeb-f401ea97f997.png">


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

<img width="420" alt="bluepresenter" src="https://user-images.githubusercontent.com/61653082/225827991-a284fcab-ad4a-4da0-becf-d506053f961b.png">
