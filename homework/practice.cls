%%
%% This is file `practice.cls',
%%
%% Style for homework and practices
%%
%% Copyright 2017 zodiacfireworks
%%
\def\RCSfile{practice}%
\def\RCSversion{0.1}%
\def\RCSdate{2017/06/28}%
\def\@shortjnl{\relax}
\def\@journal{SoftButterfly}
\def\@company{SoftButterfly}
\def\@shortjid{practice}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{\@shortjid}[\RCSdate, \RCSversion: \@journal]
\LoadClass{elsarticle}

\RequirePackage[spanish]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{xstring}
\RequirePackage{xcolor}

\definecolor{textcolor}{rgb}{0.1216, 0.1216, 0.1216}
\definecolor{backgroundcolor}{rgb}{0.9804, 0.9804, 0.9804}
\def\textcolor{textcolor}
\def\backgroundcolor{backgroundcolor}

\let\@course\@empty
\def\course#1{%
  \g@addto@macro\@course{#1}%
}

\def\maketitle{
  \begin{center}
    \includegraphics[width=1cm]{unmsm.png}\par%
    \scriptsize\textsc\textrm{UNIVERSIDAD NACIONAL MAYOR DE SAN MARCOS}\par%
    \tiny\textit\textrm{Universidad del Perú, Decana de América}\par%
    \vskip\baselineskip%
    {\small\@course\par}%
    \Large\@title\par%
  \end{center}
  \vskip\baselineskip%
  \hrule\par%
}

\AtBeginDocument{%
    \color{\textcolor}\global\let\default@color\current@color%
    \pagecolor{\backgroundcolor}%
    \setlength{\parindent}{0pt}%
}
