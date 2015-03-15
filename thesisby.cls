%%
%% This is file `thesisby.cls',
%% modifided from the class `dissert.cls'.
%% Need package `geometry'.
%%
%% Copyright 2008-2012 V. A. Piatrou <thesisby@tut.by>
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%%
%% The Current Maintainer of this work is V. A. Piatrou
%%
%% Web site: thesisby.at.tut.by
%% Class: thesisby
%% Options: a4paper+, draft, final+, leqno, fleqn, openbib, rus+, bel ('+' default)
%% Paper size: A4
%% Margins: top 2cm, bottom 2cm, left 3cm, right 1cm
%% Type: portrait, oneside, onecolumn
%% Font size: 14pt
%% Font: Computer Modern Roman
%% With package `PSCyr' and writing in preamble lines:
%%          \usepackage{pscyr}
%%          \renewcommand{\rmdefault}{ftm}
%%       will be using font `Times New Roman'
%% Interval: 1.1
%% Page numbering: bottom center
%% Type numbering: all sheets, including with title page (no visible)
%% Structures:
%%   Section \chapter 1
%%   Subsection \section 1.1
%%   Subsubsection \subsection 1.1.1
%%   Subsubsubsection \subsubsection 1.1.1.1
%%
%% Environments:
%%   description (labels prints such italic)
%%   comment
%    comments
%%   quotation
%%   quote
%%   titlepage (with no keywords like \author, etc.)
%%   eqrem (for definitions after equations)
%%   appendix
%%   figure
%%   table
%%   thebibliography
%%   mybibliography
%%   theindex
%%
%% Commands
%%   \tableofcontents
%%   \listoffigures
%%   \listoftables
%%
%%

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{thesisby}
              [2012/07/15 v1.0
LaTeX document class for thesis]
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}
}% End of the AtEndOfPackage
}% End of the \DeclareOption{openbib}


\AtBeginDocument{%
 \@ifpackageloaded{hyperref}{% Extension of the package hyperref
    \newcommand{\hyp@def}[1]{\hyperdef{cite}{#1}{}}
 }{
    \newcommand{\hyp@def}[1]{}
}% End of the extension of the package hyperref

 \@ifpackageloaded{longtable}{% Extension of the package longtable
 \LTcapwidth=17cm
  \def\LT@makecaption#1#2#3{%
  \LT@mcol\LT@cols c{\hbox to\z@{\hss\parbox[t]\LTcapwidth{%
    \sbox\@tempboxa{#1{#2 -- }#3}%
    \ifdim\wd\@tempboxa>\hsize
      #1{#2 -- }#3%
    \else
      \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
    \fi
    \endgraf\vskip\baselineskip}%
  \hss}}}
 }% End of the extension of the package longtable

}% End of the \AtBeginDocument{


% Names

\newcommand\contentsname{{\cyr\CYRO\CYRG\CYRL\CYRA\CYRV\CYRL\CYRE\CYRN\CYRI\CYRE}}%
\newcommand\listfigurename{{\cyr\CYRS\cyrp\cyri\cyrs\cyro\cyrk{} \cyrr\cyri\cyrs\cyru\cyrn\cyrk\cyro\cyrv}}%
\newcommand\listtablename{{\cyr\CYRS\cyrp\cyri\cyrs\cyro\cyrk{} \cyrt\cyra\cyrb\cyrl\cyri\cyrc}}%
\newcommand\bibname{{\cyr\CYRS\cyrp\cyri\cyrs\cyro\cyrk{} \cyri\cyrs\cyrp\cyro\cyrl\cyrsftsn\cyrz\cyro\cyrv\cyra\cyrn\cyrn\cyrery\cyrh{}  \cyri\cyrs\cyrt\cyro\cyrch\cyrn\cyri\cyrk\cyro\cyrv}}%
\newcommand\mybibname{{\cyr\CYRS\cyrp\cyri\cyrs\cyro\cyrk{}  \cyrp\cyru\cyrb\cyrl\cyri\cyrk\cyra\cyrc\cyri\cyrishrt{} \cyrs\cyro\cyri\cyrs\cyrk\cyra\cyrt\cyre\cyrl\cyrya}}%
\newcommand\indexname{{\cyr\CYRP\CYRR\CYRE\CYRD\CYRM\CYRE\CYRT\CYRN\CYRERY\CYRISHRT{} \CYRU\CYRK\CYRA\CYRZ\CYRA\CYRT\CYRE\CYRL\CYRSFTSN}}%
\newcommand\figurename{{\cyr\CYRR\cyri\cyrs\cyru\cyrn\cyro\cyrk}}%
\newcommand\tablename{{\cyr\CYRT\cyra\cyrb\cyrl\cyri\cyrc\cyra}}%
\newcommand\chaptername{{\cyr\CYRG\CYRL\CYRA\CYRV\CYRA}}%
\newcommand\eqremname{{\cyr\cyrg\cyrd\cyre}}%
\newcommand\appendixname{{\cyr\CYRP\CYRR\CYRI\CYRL\CYRO\CYRZH\CYRE\CYRN\CYRI\CYRE}}%
\newcommand\commentname{{\cyr\CYRP\cyrr\cyri\cyrm\cyre\cyrch\cyra\cyrn\cyri\cyre}}%
\newcommand\commentsname{{\cyr\CYRP\cyrr\cyri\cyrm\cyre\cyrch\cyra\cyrn\cyri\cyrya}}%

%Russian language
\newcommand{\selectlanguagerus}{
\renewcommand\contentsname{{\cyr\CYRO\CYRG\CYRL\CYRA\CYRV\CYRL\CYRE\CYRN\CYRI\CYRE}}%
\renewcommand\listfigurename{{\cyr\CYRS\cyrp\cyri\cyrs\cyro\cyrk{} \cyrr\cyri\cyrs\cyru\cyrn\cyrk\cyro\cyrv}}%
\renewcommand\listtablename{{\cyr\CYRS\cyrp\cyri\cyrs\cyro\cyrk{} \cyrt\cyra\cyrb\cyrl\cyri\cyrc}}%
\renewcommand\bibname{{\cyr\CYRS\cyrp\cyri\cyrs\cyro\cyrk{} \cyri\cyrs\cyrp\cyro\cyrl\cyrsftsn\cyrz\cyro\cyrv\cyra\cyrn\cyrn\cyrery\cyrh{}  \cyri\cyrs\cyrt\cyro\cyrch\cyrn\cyri\cyrk\cyro\cyrv}}%
\renewcommand\mybibname{{\cyr\CYRS\cyrp\cyri\cyrs\cyro\cyrk{}  \cyrp\cyru\cyrb\cyrl\cyri\cyrk\cyra\cyrc\cyri\cyrishrt{} \cyrs\cyro\cyri\cyrs\cyrk\cyra\cyrt\cyre\cyrl\cyrya}}%
\renewcommand\indexname{{\cyr\CYRP\CYRR\CYRE\CYRD\CYRM\CYRE\CYRT\CYRN\CYRERY\CYRISHRT{} \CYRU\CYRK\CYRA\CYRZ\CYRA\CYRT\CYRE\CYRL\CYRSFTSN}}%
\renewcommand\figurename{{\cyr\CYRR\cyri\cyrs\cyru\cyrn\cyro\cyrk}}%
\renewcommand\tablename{{\cyr\CYRT\cyra\cyrb\cyrl\cyri\cyrc\cyra}}%
\renewcommand\chaptername{{\cyr\CYRG\CYRL\CYRA\CYRV\CYRA}}%
\renewcommand\eqremname{{\cyr\cyrg\cyrd\cyre}}%
\renewcommand\appendixname{{\cyr\CYRP\CYRR\CYRI\CYRL\CYRO\CYRZH\CYRE\CYRN\CYRI\CYRE}}%
\renewcommand\commentname{{\cyr\CYRP\cyrr\cyri\cyrm\cyre\cyrch\cyra\cyrn\cyri\cyre}}%
\renewcommand\commentsname{{\cyr\CYRP\cyrr\cyri\cyrm\cyre\cyrch\cyra\cyrn\cyri\cyrya}}%
}%End of newcommand

%Belarussian language
\newcommand{\selectlanguagebel}{
\renewcommand\contentsname{{\cyr\CYRZ\CYRM\CYRE\CYRS\CYRT}}%
\renewcommand\listfigurename{{\cyr\CYRS\cyrp\cyrii\cyrs{} \cyrr\cyrery\cyrs\cyru\cyrn\cyrk\cyra\cyrushrt}}%
\renewcommand\listtablename{{\cyr\CYRS\cyrp\cyrii\cyrs{} \cyrt\cyra\cyrb\cyrl\cyrii\cyrc}}%
\renewcommand\bibname{{\cyr\CYRS\cyrp\cyrii\cyrs{} \cyrv\cyrery\cyrk\cyra\cyrr\cyrery\cyrs\cyrt\cyra\cyrn\cyrery\cyrh{}  \cyrk\cyrr\cyrery\cyrn\cyrii\cyrc}}%
\renewcommand\mybibname{{\cyr\CYRS\cyrp\cyrii\cyrs{} \cyrp\cyru\cyrb\cyrl\cyrii\cyrk\cyra\cyrc\cyrery\cyrishrt{} \cyrs\cyrp\cyra\cyrsh\cyru\cyrk\cyra\cyrl\cyrsftsn\cyrn\cyrii\cyrk\cyra}}%
\renewcommand\indexname{{\cyr\CYRP\CYRR\CYRA\CYRD\CYRM\CYRE\CYRT\CYRN\CYRERY{} \CYRP\CYRA\CYRK\CYRA\CYRZ\CYRA\CYRL\CYRSFTSN\CYRN\CYRI\CYRK}}%
\renewcommand\figurename{{\cyr\CYRR\cyrery\cyrs\cyru\cyrn\cyra\cyrk}}%
\renewcommand\tablename{{\cyr\CYRT\cyra\cyrb\cyrl\cyrii\cyrc\cyra}}%
\renewcommand\chaptername{{\cyr\CYRR\CYRA\CYRZ\CYRD\CYRZ\CYRE\CYRL}}%
\renewcommand\eqremname{{\cyr\cyrd\cyrz\cyre}}%
\renewcommand\appendixname{{\cyr\CYRD\CYRA\CYRD\CYRA\CYRT\CYRA\CYRK}}%
\renewcommand\commentname{{\cyr\CYRZ\cyra\cyrushrt\cyrv\cyra\cyrg\cyra}}%
\renewcommand\commentsname{{\cyr\CYRZ\cyra\cyrushrt\cyrv\cyra\cyrg\cyrii}}%
}%End of newcommand

%Language options
\newcommand{\languagesetup}{\selectlanguagerus}
\newcommand{\contentsnamerep}{\cyr\CYRS\cyro\cyrd\cyre\cyrr\cyrzh\cyra\cyrn\cyri\cyre}
\newcommand{\@appendixnameposition}{\hfill}

\DeclareOption{bel}{%
\renewcommand{\languagesetup}{\selectlanguagebel}
\renewcommand{\contentsnamerep}{\cyr\CYRZ\cyrm\cyre\cyrs\cyrt}
}%End of the \DeclareOption{bel}

\DeclareOption{rus}{%
}%End of the \DeclareOption{rus}

\AtBeginDocument{%
%Assignment of standart names
\addto{\captionsrussian}{\languagesetup}
}% End of the \AtBeginDocument{



\DeclareOption{rep}{%
\renewcommand{\@appendixnameposition}{\centering}
\AtBeginDocument{%
\addtolength{\l@sectionnumwidth}{-0.7em}
\addtolength{\l@subsectionnumwidth}{-0.7em}
\addtolength{\l@subsubsectionnumwidth}{-0.7em}

\addto{\captionsrussian}{\renewcommand{\contentsname}{\contentsnamerep}}
}% End of the \AtBeginDocument{
}%End of the \DeclareOption{rep}


\ExecuteOptions{a4paper,final}
\ProcessOptions


%%
%% Fonts sizes and values
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xivpt{17}%
   \abovedisplayskip 14\p@ \@plus3\p@ \@minus7\p@
   \abovedisplayshortskip \z@ \@plus4\p@
   \belowdisplayshortskip 7\p@ \@plus4\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
   \@setfontsize\small\@xiipt{14}%
   \abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 2\p@ \@plus3\p@ \@minus5\p@
               \parsep 1.5\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@xpt\@xiipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 2\p@ \@plus2\p@ \@minus2\p@
               \parsep 1\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viiipt{9.5}}
\newcommand\tiny{\@setfontsize\tiny\@vipt\@viipt}
\newcommand\large{\@setfontsize\large\@xviipt{22}}
\newcommand\Large{\@setfontsize\Large\@xxpt{25}}
\newcommand\LARGE{\@setfontsize\LARGE\@xxvpt{30}}
\newcommand\huge{\@setfontsize\huge{29.86}{35}}
\newcommand\Huge{\@setfontsize\Huge{35.83}{40}}
\if@twocolumn
  \setlength\parindent{1em}
\else
  \setlength\parindent{1.5em}
\fi
\setlength\smallskipamount{3\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}
\setlength\headheight{14\p@}
\setlength\headsep   {25\p@}
\setlength\topskip   {14\p@}
\setlength\footskip{30\p@}
\setlength\maxdepth{.5\topskip}
  
  \setlength\@tempdima{\paperwidth}
  \addtolength\@tempdima{-2in}
  \setlength\@tempdimb{430\p@}
  \if@twocolumn
    \ifdim\@tempdima>2\@tempdimb\relax
      \setlength\textwidth{2\@tempdimb}
    \else
      \setlength\textwidth{\@tempdima}
    \fi
  \else
    \ifdim\@tempdima>\@tempdimb\relax
      \setlength\textwidth{\@tempdimb}
    \else
      \setlength\textwidth{\@tempdima}
    \fi
  \fi
  \@settopoint\textwidth

  \setlength\@tempdima{\paperheight}
  \addtolength\@tempdima{-2in}
  \addtolength\@tempdima{-1.5in}
  \divide\@tempdima\baselineskip
  \@tempcnta=\@tempdima
  \setlength\textheight{\@tempcnta\baselineskip}
\addtolength\textheight{\topskip}
\if@twocolumn
 \setlength\marginparsep {10\p@}
\else
  \setlength\marginparsep{10\p@}
\fi
\setlength\marginparpush{7\p@}
  \if@twoside
    \setlength\@tempdima        {\paperwidth}
    \addtolength\@tempdima      {-\textwidth}
    \setlength\oddsidemargin    {.4\@tempdima}
    \addtolength\oddsidemargin  {-1in}
    \setlength\marginparwidth   {.6\@tempdima}
    \addtolength\marginparwidth {-\marginparsep}
    \addtolength\marginparwidth {-0.4in}
  \else
    \setlength\@tempdima        {\paperwidth}
    \addtolength\@tempdima      {-\textwidth}
    \setlength\oddsidemargin    {.5\@tempdima}
    \addtolength\oddsidemargin  {-1in}
    \setlength\marginparwidth   {.5\@tempdima}
    \addtolength\marginparwidth {-\marginparsep}
    \addtolength\marginparwidth {-0.4in}
    \addtolength\marginparwidth {-.4in}
  \fi
  \ifdim \marginparwidth >2in
     \setlength\marginparwidth{2in}
  \fi
  \@settopoint\oddsidemargin
  \@settopoint\marginparwidth
  \setlength\evensidemargin  {\paperwidth}
  \addtolength\evensidemargin{-2in}
  \addtolength\evensidemargin{-\textwidth}
  \addtolength\evensidemargin{-\oddsidemargin}
  \@settopoint\evensidemargin
  \setlength\topmargin{\paperheight}
  \addtolength\topmargin{-2in}
  \addtolength\topmargin{-\headheight}
  \addtolength\topmargin{-\headsep}
  \addtolength\topmargin{-\textheight}
  \addtolength\topmargin{-\footskip}     % this might be wrong!
  \addtolength\topmargin{-.5\topmargin}
  \@settopoint\topmargin
\setlength\footnotesep{9.8\p@}
\setlength{\skip\footins}{12\p@ \@plus 4\p@ \@minus 2\p@}
\setlength\floatsep    {14\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\textfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {15\p@ \@plus 5\p@ \@minus 5\p@}
\setlength\dblfloatsep    {14\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@ \@plus 1fil}
\setlength\@fpsep{11\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{11\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\setlength\partopsep{2\p@ \@plus 2\p@ \@minus 2\p@}
\def\@listi{\leftmargin\leftmargini
            \parsep 1\p@  \@plus2.5\p@ \@minus\p@
            \topsep 2\p@ \@plus5\p@   \@minus7\p@
            \itemsep1\p@  \@plus2.5\p@ \@minus\p@}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    1\p@   \@plus3\p@ \@minus\p@
              \parsep    1\p@ \@plus\p@    \@minus\p@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    1\p@\@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \topsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
%% End fonts sizes and values
%%

\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{1.1}
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
\def\ps@headings{%
    \let\@oddfoot\@empty
    \def\@oddhead{\hfil\thepage}%
    }

%Sections
\newcommand*\chaptermark[1]{}
\setcounter{secnumdepth}{3}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\renewcommand \thechapter {\@arabic\c@chapter}
\renewcommand \thesection {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection.\@arabic\c@subsubsection}
\newcommand\@chapapp{\chaptername}
\newcommand{\@chapternameposition}{\centering}
\newcommand\chapter{\clearpage
                    \global\@topnum\z@
                    \@afterindenttrue
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
%				{\protect\numberline{\thechapter}#1}%
                                {\normalfont
                    \@chapapp\space\thechapter\space\space{} #1}%
                    \else
                      \addcontentsline{toc}{chapter}%
                       {\normalfont
                   \MakeUppercase{#1}}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \@makechapterhead{#2}%
                    \@afterheading}
\def\@makechapterhead#1{%
  {\parindent \z@ \raggedright \large
    \ifnum \c@secnumdepth >\m@ne
    \@chapternameposition
        \MakeUppercase{\normalfont\bfseries \@chapapp\space \thechapter}
        \par\nobreak
    \fi
    \centering
    \interlinepenalty\@M
    \MakeUppercase{\normalfont \bfseries #1}\par\nobreak
    \vskip 40\p@
  }}
\def\@schapter#1{\@makeschapterhead{#1}%
                 \@afterheading}
\def\@makeschapterhead#1{%
  {\parindent \z@ \raggedright
    \large
    \centering
    \interlinepenalty\@M
    \MakeUppercase{\normalfont \bfseries  #1}\par\nobreak
    \vskip 20\p@
  }}
\newcommand\section{\@startsection {section}{1}{\parindent}%
                                   {3.5ex \@plus 1ex \@minus .2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\large\bfseries}}
\newcommand\subsection{\@startsection{subsection}{2}{\parindent}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {2.3ex \@plus.2ex}%
                                    {\normalfont\bfseries}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\parindent}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\bfseries}}

%Lists
\setlength\leftmargini  {2.5em}
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\setlength\leftmarginv  {1em}
\setlength\leftmarginvi {1em}
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newcounter{quotetionnum}

%Environments
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\itshape #1}

\newenvironment{comment}
               {\begin{list}{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item \small \commentname{} - \relax}
               {\end{list}}

\newenvironment{comments}
               {\noindent\hspace{4em}\small\commentsname{}\relax%
	        \begin{list}{\@arabic\c@quotetionnum.\hfill}{\usecounter{quotetionnum}\listparindent 1.7em%
        	    \labelsep = 0pt%
            	    \labelwidth = 1.5em%
                    \itemindent    3.2em%
                    \rightmargin   \leftmargin%
                    \parsep        \z@ \@plus\p@}%
                }
               {\end{list}}

\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}

\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}

\newenvironment{titlepage}
    {\newpage \thispagestyle{empty}}{\newpage}

\newlength\Gost@EqRemLen
\newlength\Gost@@EqRemLen
\newenvironment{eqrem}{%
 \begin{tabular}{@{}p{\Gost@@EqRemLen}@{ }p{\Gost@EqRemLen}}
{\eqremname}&%
}{%
 \end{tabular}
}

\AtBeginDocument{%
 \makeatletter%
  \setlength\Gost@EqRemLen{\textwidth}%
  \addtolength\Gost@EqRemLen{-10mm}%
  \settowidth\Gost@@EqRemLen{{\eqremname}}%
  \addtolength\Gost@EqRemLen{-\Gost@@EqRemLen}%
 \makeatother%
}

\newcommand\appendix{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \renewcommand{\@chapternameposition}{\@appendixnameposition}
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Asbuk\c@chapter}
}%End of the appendix

%Figures and tables
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset {equation}{chapter}
\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
\newcounter{figure}[chapter]
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}[chapter]
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{5\p@}
\setlength\belowcaptionskip{5\p@}
\def\captable{table}
\def\capfigure{figure}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \ifx\@captype\captable
  \normalfont #1 -- #2 \par
  \else
  \small \bfseries \centering #1 -- \normalsize #2
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{2}
\newcommand\tableofcontents{%
     \chapter*{\contentsname}%
     \@starttoc{toc}%
     }
\newcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{2.3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      \normalfont #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}


\newlength{\l@sectionnumwidth}
\setlength{\l@sectionnumwidth}{2.3em}
\newlength{\l@subsectionnumwidth}
\setlength{\l@subsectionnumwidth}{3.2em}
\newlength{\l@subsubsectionnumwidth}
\setlength{\l@subsubsectionnumwidth}{4.1em}

\newcommand*\l@section{\@dottedtocline{1}{0.5em}{\l@sectionnumwidth}}
\newcommand*\l@subsection{\@dottedtocline{2}{1em}{\l@subsectionnumwidth}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{1.5em}{\l@subsubsectionnumwidth}}


\newcommand\listoffigures{%
    \chapter*{\listfigurename}%
    \@starttoc{lof}%
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \chapter*{\listtablename}%
    \@starttoc{lot}%
    }
\let\l@table\l@figure

%Bibliographies
\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
     {\section*{\bibname}%
     \addcontentsline{toc}{section}{\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}\hfill}%
           {\settowidth\labelwidth{\@biblabel{#1.}}%
		\setlength\labelsep{0em}
		\leftmargin = 0mm
		\itemindent = \leftmargin
		\advance\itemindent\parindent
		\advance\itemindent\labelwidth
		\advance\itemindent\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}
	    }
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
	\setlength\labelsep{0.5em}
      %\renewcommand\labelenumiv{\theenumiv.}
      \endlist}
\newenvironment{mybibliography}[1]
     {\section*{\mybibname}%
     \addcontentsline{toc}{section}{\mybibname}%
     \list{\@biblabel{\@arabic\c@enumiv--A}\hfill}%
           {\settowidth\labelwidth{\@biblabel{#1--A.}}%
		\setlength\labelsep{0em}
		\leftmargin = 0mm
		\itemindent = \leftmargin
		\advance\itemindent\parindent
		\advance\itemindent\labelwidth
		\advance\itemindent\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}
		\renewcommand\bibitem[1]{\item\hyp@def{##1}\if@filesw \immediate\write\@auxout
	       {\string\bibcite{##1}{\@arabic\c@enumiv--A}}\fi\ignorespaces}%
	    }%end of the second argument of the \list 
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}%
     {\def\@noitemerr
       {\@latex@warning{Empty `mybibliography' environment}}%
	\setlength\labelsep{0.5em}
      \endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\clearpage}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
\@addtoreset{footnote}{chapter}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}

\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{plain}
\pagenumbering{arabic}
\sloppy
\raggedbottom
\onecolumn
\usepackage{geometry}
\geometry{a4paper,top=2cm,bottom=2cm,left=3cm,right=1cm}
\renewcommand{\@biblabel}[1]{#1.}
\endinput
%%
%% End of file `thesisby.cls'.
