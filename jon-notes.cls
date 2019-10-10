\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jon-notes}[Jon's Notes class]

\LoadClass[article,9pt,oneside]{memoir}

\RequirePackage{amsmath,amsthm,amssymb}
\RequirePackage{xparse}
\RequirePackage[activate={true,nocompatibility}]{microtype}
\RequirePackage[T1]{fontenc}
\RequirePackage[cal=boondoxo]{mathalfa}
\RequirePackage{libertine}
\RequirePackage[libertine]{newtxmath}
\RequirePackage{zi4}

\RequirePackage{jon-thm}
\RequirePackage{jon-tikz}
\RequirePackage{jon-biblatex}
\RequirePackage{cleveref}
\RequirePackage{booktabs}


\counterwithout{section}{chapter}
\setsecnumdepth{subsection}
\setsecnumformat{\csname the#1\endcsname.\ \ }

\setsecheadstyle{\bfseries}
\setsubsecheadstyle{\bfseries}
\setsubsubsecheadstyle{\bfseries}
\setparaheadstyle{\bfseries}
\setsubparaheadstyle{\bfseries}


\pretitle{\begin{center}\LARGE\bfseries\MakeTextUppercase}
\posttitle{\par\end{center}\vskip 0.5em}

\linespread{1.2}


\newcommand*\thesubbbsection{%
  \ifnum\c@subsection=0
    \thesection%
  \else
    \thesubsection%
  \fi
}

%\setlength\parindent{1.5em}

\ExplSyntaxOn
\newcounter{para}[subsubsection]
\renewcommand\thepara{{\bfseries(\thesubbbsection.\arabic{para})}}

\NewDocumentCommand\para{}{
  \par\noindent
  \hspace{\parindent}
  \refstepcounter{para}
  \thepara
  \space\space
}
\ExplSyntaxOff




\definecolor{Matterhorn}{RGB}{77,77,77}
\definecolor{RegalBlue}{RGB}{3,69,117}
\definecolor{RedDevil}{RGB}{134,1,17}
\definecolor{Revolutionary}{RGB}{150,40,16}


\tightlists
