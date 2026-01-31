\LoadClass[10pt, letterpaper]{article}
\usepackage{geometry, graphicx, minted, caption, xparse, tcolorbox, tabularx, booktabs, eso-pic}
\tcbuselibrary{minted, listings, breakable, skins}

% -- Fonts Setup
\usepackage{fontspec, polyglossia}
\setmainfont{Times New Roman}

% Language Types
\setdefaultlanguage{english}
\setotherlanguages{japanese, spanish}

% Japanese Font Setup
\newfontfamily\japanesefont[
    Scale=0.93,
    LetterSpace=0.5
]{Noto Serif CJK JP}
\newfontfamily\japanesefontsf{Noto Sans CJK JP}
\newfontfamily\japanesefonttt[
    Scale=0.95,
    ItalicFont = *,
    SlantedFont = *
]{Noto Sans Mono CJK JP}

\renewcommand{\arraystretch}{1.3}

% Spanish Font
\newfontfamily\spanishfont{Times New Roman}

\usepackage{setspace}
\singlespacing

\usepackage[style=ieee, language=auto, autolang=langname]{biblatex}
\setlength\bibitemsep{\baselineskip}
\usepackage{xurl}

\DeclareLanguageMapping{japanese}{english}
\usemintedstyle{manni}

\geometry{
	letterpaper,
	left=1in,
	right=1in,
	bottom=1in,
	top=1in
}

\newcommand{\AbstractTitle}{Abstract}

\makeatletter
\renewenvironment{abstract}{
	\if@twocolumn
		\section*{\AbstractTitle}
	\else
		\begin{center}
			{\bfseries\section*\AbstractTitle\vspace{\z@}}
		\end{center}
		\quotation
	\fi
}{\if@twocolumn\else\endquotation\fi}
\makeatother

\setcounter{secnumdepth}{0}

\setlength{\parskip}{\baselineskip}

\newcommand\researchTitle[1]{
	\vspace*{3cm}
	\textbf{\huge{#1}}\\
	\vspace{0.5cm}
}

\newcommand\authorInfo[2]{
	\small
	\textbf{#1}\\
	#2\\
}

\NewDocumentCommand{\abstractSection}{ m }{
	\begin{abstract}
		#1
	\end{abstract}
}

\newcommand\midSection[1]{\section{#1}}
\newcommand\midSectionContent[1]{#1}

\newcommand\midSubSection[1]{\subsection{#1}}
\newcommand\midSubSectionContent[1]{#1}

\NewDocumentCommand{\tableBlock}{ m m m }{
    \begin{table}[htbp]
        \centering
        \begin{tabular}{#1}
            \toprule
            #2 \\
            \midrule
            #3 \\
            \hline
        \end{tabular}
    \end{table}
}

\NewDocumentCommand{\imageBlock}{ O{0.3} m m}{
	\begin{figure}[htbp]
		\centering
		\includegraphics[scale=#1]{#2}
		\caption{#3}
	\end{figure}
}

\NewDocumentCommand\bulletBlockItem{ m }{\item\textbf{#1:}}
\NewDocumentEnvironment{bulletBlockContent}{}{
	\begin{itemize}
		}{
	\end{itemize}
}

\DeclareTCBListing{codeBlock}{ m O{} O{} }{
	listing engine=minted,
    listing only,
	minted language=#1,
	minted options={
			breaklines,
			linenos,
			numbersep=3mm,
			fontsize=\footnotesize
		},
	colback=white,
	colframe=black!70,
	breakable,
	enhanced,
    title={\begin{tabularx}{\linewidth}{@{}lXl@{}}\footnotesize{#2} & & \scriptsize{#1}\end{tabularx}},
	#3
}

\newcommand\bibliographyBlock[1]{\printbibliography[heading=bibintoc, title={#1}]}

\NewDocumentCommand{\headerBlock}{ +m }{
    \AddToShipoutPicture*{
        \AtTextUpperLeft{
            \makebox[\textwidth][r]{
                \parbox{0.6\textwidth}{
                    \raggedleft
                    \scriptsize
                    #1\par
                    \hrule
                }
            }
        }
    }
}
