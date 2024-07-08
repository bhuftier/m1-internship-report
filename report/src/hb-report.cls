%% IDENTIFICATION

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hb-report}[2023-06-01]

%% PRELIMINARY DECLARATIONS

\LoadClass[twocolumn]{article}

\RequirePackage[top=2.5cm, bottom=2.5cm, left=2.5cm, right=2.5cm]{geometry}
\RequirePackage{makecell}

%% OPTIONS

\DeclareOption*{\ClassWarning{hb-report}{Unknown option '\CurrentOption'}}
% \DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%% CLASS DECLARATIONS

\DeclareRobustCommand{\subject}[1]{\gdef\@subject{#1}}
\DeclareRobustCommand{\intern}[1]{\gdef\@intern{#1}}
\DeclareRobustCommand{\supervisor}[1]{\gdef\@supervisor{#1}}

\renewcommand{\maketitle}{
    \begingroup
    \onecolumn
    \centering
    \thispagestyle{empty}
    \Large\@title\\[15pt]
    \LARGE\@subject\\[15pt]
    \Large
    \setlength{\tabcolsep}{20pt}
    \begin{tabular}[t]{c}
        \@intern
    \end{tabular}\\[15pt]
    \large
    \begin{tabular}[t]{c}
        \@supervisor
    \end{tabular}\par
    \vspace*{15pt}
    \normalsize\@date
    \hypersetup{hidelinks}
    \tableofcontents
    \newpage
    % \twocolumn
    \endgroup
}

\newenvironment{proof}{\paragraph{Demonstration}}{\hfill$\square$\medskip}

\newcommand{\todo}[1]{{\color{red}-- #1 --}}
\newcommand{\hr}{%
    \medskip%
    \noindent\makebox[\linewidth]{\rule{\columnwidth}{0.4pt}}%
    \medskip%
}
% Guide here https://ctan.org/pkg/clsguide