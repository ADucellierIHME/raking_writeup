% Inherent extarticle class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{note}[06/02/2019, v0.01]
\LoadClass{extarticle}

% Fonts and languages
\RequirePackage[T1]{fontenc}
\RequirePackage{noto}
\RequirePackage[sfdefault, light]{roboto}
\renewcommand{\familydefault}{\sfdefault}
\RequirePackage{ragged2e}

% Colors
\RequirePackage{xcolor}
\definecolor{important}{HTML}{386890}
\definecolor{link}{HTML}{368BC1}


% Page format
\RequirePackage[letterpaper,
                includeheadfoot,%
                left=70pt,%
                right=70pt,%
                top=45pt,% 10pt provided by headsep
                bottom=45pt,%
                headheight=0pt,% No Header
                headsep=10pt,%
                footskip=25pt]{geometry}

% Main title page
\newcommand{\titlefont}{\normalfont\rmfamily\bfseries\fontsize{18pt}{20pt}
                        \selectfont}
\newcommand{\authorfont}{\normalfont\bfseries\fontsize{8}{11}\selectfont}
\newcommand{\datefont}{\normalfont\fontsize{7}{8}\selectfont}
\newcommand{\absfont}{\normalfont\bfseries\fontsize{8}{11}\selectfont}
\newcommand{\keywordsfont}{\normalfont\rmfamily\fontsize{7}{10}\selectfont}
\newcommand{\copyrightfont}{\normalfont\rmfamily\fontsize{6}{8}\selectfont}

\renewcommand{\@maketitle}{
  {\color{important}\raggedright\baselineskip=18pt \titlefont \@title\par}
  \vskip 3pt
  {\color{black}\hrule}
  \vskip18pt
}


% Abstract
% -----------------------------------------------------------------------------


% Section/subsection/paragraph set-up
\RequirePackage[explicit]{titlesec}

\titleformat{\section}
  {\color{important}\rmfamily\bfseries\fontsize{14pt}{14pt}\selectfont}
  {\thesection.}
  {0.5em}
  {#1}
  []
\titleformat{name=\section,numberless}
  {\color{important}\rmfamily\bfseries\fontsize{14pt}{14pt}\selectfont}
  {}
  {0em}
  {#1}
  []  
\titleformat{\subsection}
  {\color{important}\rmfamily\bfseries\fontsize{11pt}{11pt}\selectfont}
  {\thesubsection.}
  {0.5em}
  {#1 }
  []
\titleformat{\subsubsection}
  {\color{important}\rmfamily\bfseries\itshape\fontsize{10pt}{10pt}\selectfont}
  {\thesubsubsection.}
  {0.5em}
  {#1 }
  []    
\titleformat{\paragraph}[runin]
  {\color{important}\rmfamily\bfseries\fontsize{10pt}{10pt}\selectfont}
  {}
  {0em}
  {#1.}
\titlespacing*{\section}{0pc}{4ex \@plus4pt \@minus3pt}{5pt}
\titlespacing*{\subsection}{0pc}{1.5ex \@plus3pt \@minus2pt}{2pt}
\titlespacing*{\subsubsection}{0pc}{1.5ex \@plus2.5pt \@minus1.5pt}{2pt}
\titlespacing*{\paragraph}{0pc}{1.5ex \@plus2pt \@minus1pt}{12pt}
\setlength{\parskip}{1em}
\renewcommand{\baselinestretch}{1.4}
\newcommand{\bigletter}[1]{\lettrine[lines=2]{\fcolorbox{gray}{white}{\bfseries#1}}{\hskip5pt}}


% Lists
\RequirePackage{enumitem}
\setlist{nosep}
\renewcommand{\labelitemi}{\large$\bullet$}
\renewcommand{\labelitemii}{--}
% \setenumerate{align=left,
%               labelwidth=\parindent,
%               leftmargin=\parindent,
%               labelsep=0pt}


% Programming Codes
\RequirePackage{listings}
\lstset{basicstyle=\ttfamily,breaklines=true}

% Figures
\RequirePackage{graphicx}
\RequirePackage[labelfont={bf,sf},
                labelsep=period]{caption}
\DeclareCaptionFormat{noteformat}{\normalfont\fontsize{7}{9}
                                  \selectfont#1#2#3}
\captionsetup*{format=noteformat}
\RequirePackage{subcaption}


% Tables
\RequirePackage{colortbl}
\RequirePackage{booktabs}
\RequirePackage{etoolbox}
% \captionsetup*[table]{labelfont+={small},textfont+={small,sf,bf},
%                       skip=10pt,position=above}
% booktabs provide nice spacing, but rule widths and distances need fixing
\setlength{\heavyrulewidth}{0.5pt}
\setlength{\lightrulewidth}{0.5pt}
\setlength{\aboverulesep}{1.5pt}
\setlength{\belowrulesep}{1.5pt}
\setlength{\belowbottomsep}{10pt}
\AtBeginEnvironment{tabular}{\fontsize{9}{10}\selectfont}
\newcommand{\addtabletext}[1]{{\setlength{\leftskip}{9pt}\fontsize{7}{9}
                               \selectfont#1}}


% Algorithms
\RequirePackage{algorithm}
\RequirePackage[noend]{algpseudocode}


% Hyperlink
\RequirePackage[colorlinks=true, allcolors=link]{hyperref}
\renewcommand\UrlFont{\color{link}}
\urlstyle{tt}


% Bibliography
\def\bibfont{\small}

% Math operations
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{bm}