\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Khoa_class}[2024/01/01]

% Define the class
\LoadClass[a4paper,12pt]{book}
\setcounter{tocdepth}{5}
\setcounter{secnumdepth}{5}
% Minimum packages
\RequirePackage{lmodern}
\RequirePackage[utf8]{inputenc,vietnam}
\RequirePackage[T5]{fontenc}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{graphicx}
\RequirePackage[top=2.5cm, bottom=2.5cm, left=3cm, right=3cm]{geometry}
\RequirePackage[fontsize=12pt]{fontsize}
\RequirePackage{tikzscale}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage{etoc}

% Useful packages
\RequirePackage{afterpage}
\RequirePackage{hyperref}
\RequirePackage{cleveref}
\RequirePackage[all]{xy}
\RequirePackage[table,xcdraw]{xcolor}
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{listings}
\RequirePackage{textcomp}
\RequirePackage{gensymb}
\RequirePackage{url}
\RequirePackage{subfigure}
\RequirePackage{tikz,tkz-tab}
\RequirePackage[ruled]{algorithm2e}
\RequirePackage[title]{appendix}

\RequirePackage{indentfirst}
\RequirePackage{multicol}
\RequirePackage[export]{adjustbox}
% New algorithm commands
% \algnewcommand{\Inputs}[1]{%
%   \State \textbf{Inputs:}
%   \Statex \hspace*{\algorithmicindent}\parbox[t]{.8\linewidth}{\raggedright #1}
% }
% \algnewcommand{\Initialize}[1]{%
%   \State \textbf{Initialize:}
%   \Statex \hspace*{\algorithmicindent}\parbox[t]{.8\linewidth}{\raggedright #1}
% }

\titleclass{\subsubsubsection}{straight}[\subsection]
\newcounter{subsubsubsection}[subsubsection]
\renewcommand\thesubsubsubsection{\thesubsubsection.\arabic{subsubsubsection}}
\renewcommand\theparagraph{\thesubsubsubsection.\arabic{paragraph}}

\titleformat{\subsubsubsection}
  {\normalfont\normalsize\bfseries}{\thesubsubsubsection}{1em}{}
\titlespacing*{\subsubsubsection}
{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}

\def\toclevel@subsubsubsection{4}
\def\l@subsubsubsection{\@dottedtocline{4}{10em}{5em}}

\usetikzlibrary{shapes.geometric}
\tikzstyle{io} = [ellipse, minimum width=3cm, minimum height=1cm, text width=3cm, text centered, draw=black, fill=blue!30]
\tikzstyle{process} = [rectangle, minimum width=3cm, text width=4.5cm, minimum height=1cm, text centered, draw=black, fill=orange!30]

% Meta content

\titleformat{\chapter}[display]
  {\normalfont\Large\bfseries}{\centering Tuần \thechapter}{10pt}{\centering\Huge\bfseries}

\renewcommand{\chaptermark}[1]{%
  \markboth{Tuần \thechapter: #1}{}%
}
% Color definitions
\definecolor{dark}{RGB}{22,75,94}
\definecolor{lightgrey}{rgb}{.90,.90,.90}
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}
 
% Code listing style
\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\tiny,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=t,                    
    keepspaces=true,                 
    %numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}
\lstset{style=mystyle}

% Hyperref setup
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,     
    urlcolor=blue,
    citecolor=blue,
}

% End of class file
\endinput