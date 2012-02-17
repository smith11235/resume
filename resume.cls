% resume.cls
%
%    Copyright 2005 Daniel Burrows
%
% You may use, modify, and redistribute this file in any way you please, so
% long as this copyright notice is maintained.


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}

\LoadClassWithOptions{article}

% No page numbers by default.
\pagestyle{empty}

\RequirePackage{calc}
\RequirePackage{ifthen}
\RequirePackage{url}
\RequirePackage{tabularx}
\RequirePackage{pgf}
\RequirePackage{pgfshade}
\RequirePackage{xxcolor}

\RequirePackage{times}
\RequirePackage[T1]{fontenc}

\RequirePackage{geometry}
\geometry{left=0.6in,right=0.6in,top=0.6in,bottom=0.6in}

\definecolor{rulestartcolor}{rgb}{0,0,0}
\definecolor{ruleendcolor}{rgb}{1,1,1}

\newlength{\headerbuffer}
\setlength{\headerbuffer}{2pt}
\newlength{\secskip}
\setlength{\secskip}{6pt}

% Usage: \@setupshading{width}{height}{start}{end}
\newcommand{\@setupshading}[4]{%
  \pgfdeclarehorizontalshading{@ruleshading}{#2}{%
    color(0pt)=(#3); color(#1)=(#4)%
  }
}

\newcommand{\pgfrule}[4]{%
  \begin{pgfpicture}{0pt}{0pt}{#1}{#2}%
    \pgfdeclarehorizontalshading{@ruleshading}{#2}{%
      color(0pt)=(#3); color(#1)=(#4)%
    }
    \pgfputat{\pgfxy(0,0)}{\pgfbox[left,bottom]{\pgfuseshading{@ruleshading}}}
  \end{pgfpicture}%
}

\newcommand{\lrule}[2]{\pgfrule{#1}{#2}{rulestartcolor}{ruleendcolor}}
\newcommand{\rrule}[2]{\pgfrule{#1}{#2}{ruleendcolor}{rulestartcolor}}

\newcommand{\@authorname}{}
\newcommand{\@email}{}
\newcommand{\@website}{}
\newcommand{\@phone}{}
\newcommand{\@streetaddress}{}
\newcommand{\@apartmentnum}{}
\newcommand{\@citystatezip}{}

\renewcommand{\author}[1]{\renewcommand{\@authorname}{#1}}
\newcommand{\email}[1]{\renewcommand{\@email}{#1}}
\newcommand{\website}[1]{\renewcommand{\@website}{#1}}
\newcommand{\phone}[1]{\renewcommand{\@phone}{#1}}
\newcommand{\streetaddress}[1]{\renewcommand{\@streetaddress}{#1}}
\newcommand{\apartmentnum}[1]{\renewcommand{\@apartmentnum}{#1}}
\newcommand{\citystatezip}[1]{\renewcommand{\@citystatezip}{#1}}

\newcommand{\stextbullet}{\hspace{1pt} \textbullet \hspace{2pt}}

\renewcommand{\maketitle}{{%
	\vspace{\headerbuffer}%
	\par\nointerlineskip\noindent\makebox[\linewidth]{\textbf{\huge{\@authorname}}}%
	\vspace{\headerbuffer}%
	\par\nointerlineskip\noindent%
	\rrule{\linewidth*1/2}{2pt}%
	\lrule{\linewidth*1/2}{2pt}
	\par\nointerlineskip\noindent%

	\vspace{-3pt}
	\begin{small}\begin{center}
	\par\nointerlineskip\noindent
        \@email \stextbullet \@website \par
	\@streetaddress \stextbullet \@apartmentnum \stextbullet \@citystatezip \par
	\par\nointerlineskip\noindent
	\end{center}\end{small}
	\vspace{-6pt}
}}

\renewcommand{\section}[1]{%
  \goodbreak\vspace{\secskip}\vspace{\secskip}%
  \par\nointerlineskip\noindent\textbf{\textsc{\Large\makebox[\linewidth][l]{#1}}}\vspace{\headerbuffer}\par\nointerlineskip\noindent%
  \lrule{\linewidth}{0.4pt}%
  \vspace{\headerbuffer}\par\nointerlineskip}

\renewcommand{\subsection}[1]{%
  \goodbreak\vspace{\secskip}\par\nointerlineskip\vspace{-1em}\textbf{\flushleft{#1}:}\par%
}

% General catch-all for either educational or job affiliation.
%
%  Usage:
% \affiliation{institution}{descrtiption}{where}{when}
\newcommand{\affiliation}[4]{%
  \goodbreak\vspace{\secskip}\par\noindent\begin{tabularx}{\linewidth}{Xr}%
    {\bfseries #1} & \textbf{#3} \\
    {\itshape #2}  & \textit{#4}
  \end{tabularx}%
}%

