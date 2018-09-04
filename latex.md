# Introduction to LaTeX

## What is LaTeX?
LaTeX is a markup style document preparation system designed for text and mathematical formulas. Unlike other typesetters, like Word, LaTeX uses a plain text format that must be compiled into a pdf for other format. It is widely used in academia, hence we are covering it herre.

## How to write and compile LaTex?
Since LaTeX is written in plain text format, you can write LaTeX files using any of your favorite text editors, like Vim or Sublime or whatever. LaTeX files have the extension `.tex`. In order to compile tex file into pdfs or other formats, one must use a TeX distribution. The most popular of which are MikTeX (https://miktex.org/) and TeX Live (https://www.tug.org/texlive/). Both of these links have information about how to install them on your favorite OS. If you create a TeX file in a text editor and want to compile into a pdf in command line, both of these distributions have commands `pdflatex <file>.tex` which will build the file. Additionally, `Latexmk` has a similar command line interface (https://mg.readthedocs.io/latexmk.html). 

While using the command line is a valid way to write LaTeX files, many people prefer to integrated environments to write, compile, and often view the pdfs all in one place. The most popular of these among my peers are:
* TexMaker - http://www.xm1math.net/texmaker/ 
    * Cross platform support
    * Integrated pdf viewer
    * Syntax highlighting and autofill
    * Automatically download packages
* TeXShop - https://pages.uoregon.edu/koch/texshop/
    * Mac OS
    * Simple
    * Syntax highlighting
    * Pdf viewer
* Overleaf/ShareLaTeX - https://www.overleaf.com/ https://www.sharelatex.com/
    * Cloud based client
    * Allows for collaboration and sharing
    * Real-time preview
    * Syntax highlighting and autofill
    * Built in templates
    * No need to download packages
    
## Basics and Templates
A minimalistic LaTex document must have a documentclass, and begin and end.
```latex
\documentclass{article}
\begin{document}
Hello World! % Comment
\end{document
```
Commands start with backslash, `\`, curly braces surround arguments, and `%` starts a comment.

In order to format the page to meet submission requirements or to look a certain way, commands are put before the `\begin{document}` line. There are a lot of different options here, so I highly recommend starting with templates that look the way you want, as opposed to trying to set all of the options from scratch. A couple sites with good templates are:
* https://www.overleaf.com/gallery/tagged/academic-journal
* https://www.latextemplates.com/

## Text
To separate paragraphs in LaTeX you need to include a blank line in between:
```latex
This is the first sentence in paragraph 1. This is the second sentence.
This is the third sentence.

This is the first sentence in paragraph 2.
```
For different text formatting things you can use commands like:
* `\textit{...}` - italics
* `\textbf{...}` - boldface
* `\textsl{...}` - slanted

## Lists
You can make lists with `itemize` and numbered lists with `enumerate`
```latex
\begin{itemize}
   \item Bullet 1
   \item Bullet 2
\end{itemize}

\beginitemize{enumerate}
   \item Thing 1
   \item Thing 2
\end{enumerate}

```

## Math
To type math inline, use `$` to begin and end the math. For example:
```latex
Here is a sentence about the equation $Ax=b$ which is pretty important in all of math.
```
If you want to have equations in their own line, use the `align` command
```latex
\begin{align} % using {align*} wll remove numbering
   Ax &= b \\
   x_1 + x_2 &< 10 \label{eqn:mylabelname}
\end{align}
```
To start a new line, use `\\`. `&` aligns the `&`s on all lines. `\label{...}` creates a label attached to the equation, which allows you to reference the equation using `\ref{...}` or `\eqref{..}` in the text. The equation numbering and referencing are very convinient because they will automatically update when new equations are added, so you don't need to manually organize them. 

You can type pretty much any math symbol in LaTeX. A lot of them are pretty obvious, like `\psi` or a similar command works for Greek letter, `_` is subscript, and `^` is super script. There is a big list of them at http://web.ift.uib.no/Teori/KURS/WRK/TeX/symALL.html 
Here are some of them that I often use:
* `\psi` - Greek letters
* `\left( stuff \right)` - Parantheses that auto size based on what is inside (also works with other kinds of brackets)
* `\frac{numerator}{denominator}` - Fractions
* `\int` - integral
* `\partial` - partial derivative
* `\sum` or `\prod` - sum or product
* `\leq` or `\geq` - less than or equal or greater than or equal
* `\in` or `\forall` or `\exists` - logical math symbols
* `\infty` - Infinity
* `\hat{x}` or `\dot{x}` or `\tilde{x}` for different formats on variables

Here is a tool to find the LaTeX command of a symbol you draw: http://detexify.kirelabs.org/classify.html
 
## Figures
As you would expect, you can include figures. I think the best way to explain this is with an example:
```latex
\begin{figure}[H]
    \centering
    \includegraphics[width=0.25\textwidth]{file.png}
    \caption{Put caption here}
    \label{fig:myFig}
\end{figure}
```
First, you must begin and end a figure with `\begin{figure}`. The `[]` section after that is used for setting the location. LaTeX generally tries to put the figure wherever it finds a nice spot to fit it. `[H]` puts it exactly where it is specified, but you can also set it to the top of a page, bottom of a page, in its own page, etc. `\centering` centers the figure. `\includegraphics{file.png}` is where the figure to be included in linked. The square brackets before that is where you can set the size of the figure to be included. `\caption{...}` put that text as a caption below the figure. `\label{fig:..}` works just like the equation above. You can use `\ref{fig:..}` to reference the figure and the figure number will automatically changed for you. The specifications of `fig:` and `eqn:` are not necessary if the label, but I find it makes it a lot clearer what you are referencing.

## Page Formatting
Although this depends on the document type, you create sections in your pdf using the following commands, which do roughly what you would expect them to:
```latex
\chapter{Chapter Name}
\section{Section Name}
\subsection{Subsection Name}
\subsubsection{Subsubsection Name}
\paragraph
\subparagraph
```

## Packages
 
## Citations
 
 
 
## Macros

## Links
