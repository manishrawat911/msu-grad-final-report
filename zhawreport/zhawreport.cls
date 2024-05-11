%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ZHAW REPORT CLASS
% Class File
% 
% Authors:
% Martin Oswald
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------
%   CLASS DEFINITION AND PARAMETERS
%----------------------------------------
\NeedsTeXFormat{LaTeX2e}
\newcommand{\classname}{zhawreport}
\ProvidesClass{\classname}[2023/11/13 ZHAW Report]
\providecommand{\baseclass}{scrreprt}

% default options
\PassOptionsToClass{pointlessnumbers}{\baseclass}

% forward options to the base class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\ProcessOptions\relax

% load the base class with options
\LoadClass{\baseclass}

%----------------------------------------
%   REQUIRED PACKAGES
%----------------------------------------
\RequirePackage[english]{babel}
\RequirePackage[stretch=10]{microtype}
\RequirePackage{scrlayer-scrpage}
\RequirePackage{parskip}
\RequirePackage{lmodern}
\RequirePackage{amsmath}
\RequirePackage[T1]{fontenc}
\usepackage{graphicx}
\usepackage{listings}
\usepackage[table,xcdraw]{colortbl}
\usepackage{colortbl}

%----------------------------------------
%   REFS
%----------------------------------------
\RequirePackage{hyperref}
\hypersetup{pdfpagemode={UseOutlines},
bookmarksopen=true,
bookmarksopenlevel=0,
hypertexnames=false,
colorlinks=true,
citecolor=[rgb]{0.286, 0.427, 0.537},
linkcolor=[rgb]{0.161, 0.31, 0.427},
urlcolor=[rgb]{0.071, 0.212, 0.322},
pdfstartview={FitV},
unicode,
breaklinks=true,
}

%----------------------------------------
%   FONT SETUP
%----------------------------------------
\renewcommand*\rmdefault{lmr}
\renewcommand*\sfdefault{lmss}

%----------------------------------------
%   HEADER & FOOTER
%----------------------------------------
\clearpairofpagestyles
% \ihead{\@studyprogram : \@title}
\ohead{\pagemark}

\setkomafont{pagehead}{\scshape\small}
\lofoot{\@studyprogram : \@title}
\renewcommand{\chapterpagestyle}{scrheadings}
% Custom settings
% \setkomafont{pagefoot}{\footnotesize\upshape\gudea}
\addtokomafont{pagefoot}{\footnotesize\upshape\gudea\color{gray}}
%----------------------------------------
%   HEADINGS
%----------------------------------------
\setkomafont{disposition}{\sffamily\bfseries}
\setkomafont{chapter}{\large\sffamily\bfseries}
\setkomafont{section}{\large\sffamily\bfseries}
\setkomafont{subsection}{\normalsize\sffamily\bfseries}
\setkomafont{subsubsection}{\normalsize\sffamily\bfseries}

\RedeclareSectionCommand[
    beforeskip=1ex,
    afterskip=0.5ex,
    style=section
]{chapter}

\RedeclareSectionCommands[
    beforeskip=0.6ex,
    afterskip=0.3ex,
]{section,subsection,subsubsection}


%----------------------------------------
%   COMMANDS
%----------------------------------------
\newcommand{\decoRule}{\rule{.8\textwidth}{.4pt}}

%----------------------------------------
%   CUSTOM PAGES
%----------------------------------------
\input{zhawreport/pages/titlepage}

%----------------------------------------
%   CODE SNIPPETS
%----------------------------------------
\usepackage{xcolor}
\definecolor{orange!80!black}{RGB}{255,128,0}
\definecolor{green!60!black}{RGB}{0,128,0}
\definecolor{blue!80!black}{RGB}{0,0,255}
\definecolor{purple!80!black}{RGB}{128,0,128}
\definecolor{gray!20}{RGB}{200,200,200}
\definecolor{gray!5}{RGB}{245,245,245}
\definecolor{gray!30}{RGB}{220,220,220}

\lstset{ 
    language=Java,
    basicstyle=\small\ttfamily,
    numbers=left,
    numberstyle=\tiny,
    frame=single,
    breaklines=true,
    captionpos=b
}


\lstdefinestyle{dreamcode}{
belowcaptionskip=1.5\baselineskip,
breaklines=true,
frame=single,
framexleftmargin=1em,
framexrightmargin=0.5em,
framexbottommargin=0.5em,
framextopmargin=0.5em,
rulecolor=\color{gray!50},
backgroundcolor=\color{gray!10},
language=Java,
showstringspaces=false,
basicstyle=\footnotesize\ttfamily,
keywordstyle=\bfseries\color{orange},
commentstyle=\itshape\color{green!50!black},
identifierstyle=\color{blue!70!black},
stringstyle=\color{purple!70!black},
numberstyle=\tiny\color{gray!50},
stepnumber=1,
numbersep=20pt,
belowcaptionskip=0.5\baselineskip
}
\lstset{escapechar=@,style=dreamcode}
\renewcommand{\lstlistingname}{Snippet}

\setlength{\floatsep}{0.25em}

% Appendix Customization

% \renewcommand{\appendixname}{Appendix}
% \renewcommand{\appendixtocname}{Appendices}
% \renewcommand{\appendixpagename}{Appendices}

% \setkomafont{appendix}{\itshape}
% \setkomafont{appendixnumber}{\bfseries}