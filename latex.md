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
 
## Figures and Tables

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
