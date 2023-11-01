% author: Ray Lu              [george02270227@gmail.com]

% ----------------------------------------------------------------------------
% "THE CHOCOLATE-WARE LICENSE":
% Tz-Huan Huang originally wrote this file. As long as you retain this notice you
% can do whatever you want with this stuff. If we meet some day, and you think
% this stuff is worth it, you can buy me a chocolate in return Tz-Huan Huang
% ----------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nccuthesis}[2013/04/23 Thesis template for National Taiwan University]

% Derived from book class
\DeclareRobustCommand{\@typeen}{Master's}
\DeclareRobustCommand{\@typezh}{碩士}
\DeclareRobustCommand{\@classen}{Thesis}
\DeclareRobustCommand{\@classzh}{論文}
\DeclareOption{phd}{\gdef\@typeen{Doctoral}\gdef\@typezh{博士}\gdef\@classen{Dissertation}}
\DeclareOption{proposal}{\gdef\@typeen{Proposal for Doctoral}\gdef\@typezh{博士論文計畫提案書}\gdef\@classen{Dissertation}\gdef\@classzh{}}

\def\@doubleline{1.9}
\def\@onehalfline{1.62}
\DeclareRobustCommand{\@setspacing}{\setstretch{\@doubleline}}
\newif\ifzh
\zhfalse
\DeclareOption{zh}{\gdef\@setspacing{\setstretch{\@onehalfline}}\zhtrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[a4paper,12pt,oneside]{book}

% Required packages
\RequirePackage[top=2.54cm,left=3cm,bottom=2.54cm,right=3cm]{geometry}
\RequirePackage{xeCJK}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{indentfirst}
\RequirePackage{tocloft} % for centering title
\RequirePackage[notbib]{tocbibind} % include ToC/LoF/LoT into ToC
\RequirePackage{titlesec} % for formatting title
\RequirePackage{titletoc} % for formatting toc
\RequirePackage{etoolbox} % for patchcmd
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\usepackage{titlesec,titletoc,CJK,CJKnumb}





% Declarations
\DeclareRobustCommand{\university}[2]{\gdef\@universityen{#1}\gdef\@universityzh{#2}}
\DeclareRobustCommand{\college}[2]{\gdef\@collegeen{#1}\gdef\@collegezh{#2}}
\DeclareRobustCommand{\institute}[2]{\gdef\@instituteen{#1}\gdef\@institutezh{#2}}
\DeclareRobustCommand{\title}[2]{\gdef\@titleen{#1}\gdef\@titlezh{#2}}
\DeclareRobustCommand{\author}[2]{\gdef\@authoren{#1}\gdef\@authorzh{#2}}
\DeclareRobustCommand{\studentid}[1]{\gdef\@studentid{#1}}
\DeclareRobustCommand{\advisor}[2]{\gdef\@advisoren{#1}\gdef\@advisorzh{#2}}
\DeclareRobustCommand{\defenseyear}[2]{\gdef\@yearen{#1}\gdef\@yearzh{#2}}
\DeclareRobustCommand{\defensemonth}[2]{\gdef\@monthen{#1}\gdef\@monthzh{#2}}
\DeclareRobustCommand{\defenseday}[1]{\gdef\@day{#1}}
\DeclareRobustCommand{\abstractname}[2]{\gdef\@abstractnameen{#1}\gdef\@abstractnamezh{#2}}
\DeclareRobustCommand{\acknowledgements}[2]{\gdef\@acknowledgementsen{#1}\gdef\@acknowledgementszh{#2}}

\abstractname{Abstract}{摘要}
\acknowledgements{Acknowledgements}{誌謝}


%若封面需要加入英文資訊，需將下方程式碼中的‘％’刪除，並至nccuvars.tex中添加資訊，重新編譯之後及可將英文資訊加入封面
% ----------------------------------------------------------------------------
\DeclareRobustCommand{\clearpages}{\if@openright\cleardoublepage\else\clearpage\fi}

\DeclareRobustCommand{\makecover}{
  \begin{titlepage}
    \vspace{1cm}
    \begin{singlespace}
    \begin{center}
      \fontsize{18}{27}\selectfont
      \@universityzh\@collegezh\@institutezh\par
     
     {\fontsize{16}{24}\selectfont
        \@instituteen\par
        \@collegeen\par
        \@universityen\par}

      \vspace{\fill}
        \@typezh{}\@classzh\par
       \@typeen{} \@classen\par

      \vspace{\fill}
      {\fontsize{20}{24}
      \@titlezh\par}
      \vspace{0.5cm}
      {\Large\@titleen\par}
      \vspace{\fill}
      指導教授：\@advisorzh\\ 
      %Advisor: \@advisoren\par
      \vspace{0.5cm}
        研究生：\@authorzh\\
        %\@authoren\par
      \vspace{1.5cm} 
      中華民國 \@yearzh 年 \@monthzh 月\\
      \@monthen \@yearen
    \end{center}
    \end{singlespace}
    \vspace{1cm}
  \end{titlepage}
}




\newenvironment{quotationpage}[1]
  {\clearpages
   \chapter*{\centerline{#1}}
   \addcontentsline{toc}{chapter}{#1}
   \quotation}
  {\endquotation}


\newenvironment{abstracten}{\begin{quotationpage}{\@abstractnameen}\begin{spacing}{\@doubleline}}{\end{spacing}\end{quotationpage}}
\newenvironment{abstractzh}{\begin{quotationpage}{\@abstractnamezh}\begin{spacing}{\@onehalfline}}{\end{spacing}\end{quotationpage}}
\newenvironment{acknowledgementsen}{\begin{quotationpage}{\@acknowledgementsen}\begin{spacing}{\@doubleline}}{\end{spacing}\end{quotationpage}}
\newenvironment{acknowledgementszh}{\begin{quotationpage}{\@acknowledgementszh}\begin{spacing}{\@onehalfline}}{\end{spacing}\end{quotationpage}}

\setcounter{tocdepth}{2}
\pagestyle{plain}
\@setspacing

% ToC, LoF, LoT centering settings with package tocloft
\renewcommand{\cftloftitlefont}{\hfill \Huge\bfseries}
\renewcommand{\cftafterloftitle}{\hfill}
\renewcommand{\cfttoctitlefont}{\hfil \Huge\bfseries}
\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\cftlottitlefont}{\hfill \Huge\bfseries}
\renewcommand{\cftafterlottitle}{\hfill}


% Set Reference Name
\renewcommand\bibname{Reference}

\titleformat{\chapter}[hang]{\Huge\bfseries}{\thechapter}{1em}{}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}} % dots for chapters
\titlecontents{chapter}[0em]{}{\makebox[1.5em][l]{\thecontentslabel}}{}{\cftdotfill{\cftdotsep}\contentspage}

\titleformat{\section}[hang]{\Huge\bfseries}{\thesection}{1em}{}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}} % dots for chapters
\titlecontents{section}[0em]{}{\makebox[1.5em][l]{\thecontentslabel}}{}{\cftdotfill{\cftdotsep}\contentspage}       
            
            
\makeatletter
\patchcmd{\@chapter}{\addtocontents{lot}{\protect\addvspace{10\p@}}}{}{}{}
\patchcmd{\@chapter}{\addtocontents{lof}{\protect\addvspace{10\p@}}}{}{}{}
\makeatother

\makeatletter
\patchcmd{\@section}{\addtocontents{lot}{\protect\addvspace{10\p@}}}{}{}{}
\patchcmd{\@section}{\addtocontents{lof}{\protect\addvspace{10\p@}}}{}{}{}
\makeatother




% value > 0
\def\xeCJKembold{0.4}

% hack into xeCJK, you don't need to understand it
\def\saveCJKnode{\dimen255\lastkern}
\def\restoreCJKnode{\kern-\dimen255\kern\dimen255}

% save old definition of \CJKsymbol and \CJKpunctsymbol for CJK output
\let\CJKoldsymbol\CJKsymbol
\let\CJKoldpunctsymbol\CJKpunctsymbol

% apply pdf literal fake bold
\def\CJKfakeboldsymbol#1{%
  \special{pdf:literal direct 2 Tr \xeCJKembold\space w}%
  \CJKoldsymbol{#1}%
  \saveCJKnode
  \special{pdf:literal direct 0 Tr}%
  \restoreCJKnode}
\def\CJKfakeboldpunctsymbol#1{%
  \special{pdf:literal direct 2 Tr \xeCJKembold\space w}%
  \CJKoldpunctsymbol{#1}%
  \saveCJKnode
  \special{pdf:literal direct 0 Tr}%
  \restoreCJKnode}
\newcommand\CJKfakebold[1]{%
  \let\CJKsymbol\CJKfakeboldsymbol
  \let\CJKpunctsymbol\CJKfakeboldpunctsymbol
  #1%
  \let\CJKsymbol\CJKoldsymbol
  \let\CJKpunctsymbol\CJKoldpunctsymbol}
\newcommand\zhbf[1]{\CJKfakebold{#1}}

\def\Huge{\fontsize{18}{20}\selectfont}
\def\Large{\fontsize{16}{16}\selectfont}
\def\large{\fontsize{14}\selectfont}



% set Chinese version
\ifzh

   %  add by WEI in 0514 for setting Chinese bold font
  \xeCJKsetup{AutoFakeBold=true, AutoFakeSlant=true}
  
  % set two-character indentation
  \setlength{\parindent}{2em}
  
  
  \titleformat{\chapter}{\centering\Huge\bfseries}{第\CJKnumber{\thechapter}章}{1em}{}
  \titlecontents{chapter}[0em]{}{\makebox[4.1em][l]{第\CJKnumber{\thecontentslabel}章}}{}{\cftdotfill{\cftdotsep}\contentspage}
  
  %\renewcommand{\thesection}{\arabic{section}}

  %  here change by WEI in 2023 0508 for my thesis format
  % Use Chinese title and English subtitle at the same time
  
  \titleformat{\section}{\Large\bfseries}{{\thesection}}{1em}{}
  \titlecontents{section}[2em]{}{\makebox[3.1em][l]{{\thecontentslabel}}}{}{\cftdotfill{\cftdotsep}\contentspage}

%  \titleformat{\subsection}{\Large\bfseries}{{\thesection}}{1em}{}
  %\titlecontents{section}[2em]{}{\makebox[3.1em][l]{{\thecontentslabel}}}{}{\cftdotfill{\cftdotsep}\contentspage}
 

%若需更改內文目錄圖表名稱，更改下方{}中的文字即可
  
  \renewcommand{\contentsname}{目次}
  \renewcommand{\listfigurename}{圖目錄}
  \renewcommand{\listtablename}{表目錄}
  \renewcommand{\tablename}{表}
  \renewcommand{\figurename}{圖}
  \renewcommand{\bibname}{參考文獻}

  \DeclareRobustCommand{\@startappendix}{
  \titleformat{\chapter}{\centering\Huge\bfseries}{附錄 \thechapter}{1em}{}
  \titlecontents{chapter}[0em]{}{\makebox[4.1em][l]{附錄 \thecontentslabel}}{}{\cftdotfill{\cftdotsep}\contentspage}
  \appendix}
\else
  \DeclareRobustCommand{\@startappendix}{\appendix}
\fi
