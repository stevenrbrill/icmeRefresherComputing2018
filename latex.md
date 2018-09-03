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
* TeXShop - https://pages.uoregon.edu/koch/texshop/
    * Mac OS
* Overleaf/ShareLaTeX - https://www.overleaf.com/ https://www.sharelatex.com/
    * Cloud based client
    * Allows for collaboration and sharing
    * Real-time preview
    * Syntax highlighting and autofill
    * Built in templates
    * No need to download packages
    
    
 
