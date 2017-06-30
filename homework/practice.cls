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
\LoadClass{article}

\RequirePackage[spanish]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{xstring}
\RequirePackage{xcolor}
\RequirePackage{ifthen}

\definecolor{textcolor}{rgb}{0.1216, 0.1216, 0.1216}
\definecolor{backgroundcolor}{rgb}{0.9804, 0.9804, 0.9804}
\def\textcolor{textcolor}
\def\backgroundcolor{backgroundcolor}

\let\@logo\@empty
\newcommand{\logo}[1]{
  \def\@logo{#1}
}

\let\@university\@empty
\newcommand{\university}[1]{
  \def\@university{#1}
}

\def\@course{\@latex@warning@no@line{No \noexpand\course given}}
\newcommand{\course}[1]{
  \def\@course{#1}
}

\def\maketitle{
  \begin{center}
    \if\@logo\@empty
      \logo{\@latex@warning@no@line{No \noexpand\logo given}}
      \@logo
    \else
      \includegraphics[width=1cm]{\@logo}\par
      \if\@university\@empty
        \vskip\baselineskip
      \fi
    \fi
    \if\@university\@empty
      \university{\@latex@warning@no@line{No \noexpand\university given}}
      \@university
    \else
      \small\textsc{\@university}\par
      \vskip\baselineskip
    \fi
    \if\@course\@empty
      \course{\@latex@warning@no@line{No \noexpand\course given}}
      \@course
    \else
      \normalsize\@course\par
    \fi
    {\Large\@title\par}
  \end{center}
  \vskip\baselineskip%
  \hrule\par%
}

\AtBeginDocument{%
  \color{\textcolor}\global\let\default@color\current@color%
  \pagecolor{\backgroundcolor}%
  \setlength{\parindent}{0pt}%
}
