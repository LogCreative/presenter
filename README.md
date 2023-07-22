# presenter
A LaTeX presentation framework with seamless migration

presenter is a package to create presentations from
regular LaTeX documents without many modifications, which could be natively run by any latest TeX distributions.

Compared to other existing packages, presenter won't need any additional frame or slide environment to split different pages, but uses sectioning commands as the natural way to split different points.

## Usage

Since it is still in the development state, you need to unpack the dtx files before using the package. There are three methods to get the unpacked style `.sty` files:

- Use the command to get the unpacked style files in the folder `build/local`.
```
l3build unpack
```
- Use the command to get the unpacked style files in the folder `source/`.
```
cd source
latex presenter.ins
```
- Install the tds zip `presenter.tds.zip` from the [Releases](https://github.com/LogCreative/presenter/releases) section to your computer for global use.

## Examples

You can see more examples in the [`testfiles/`](testfiles/) folder. Refer to the documentation for more instructions.

## Documentation

The test results from [`testfiles/`](testfiles/) are used in the documentation, thus to compile the documentation, the check should be run first.
```
l3build check
l3build doc
```

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
