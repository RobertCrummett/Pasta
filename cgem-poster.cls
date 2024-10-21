%% CGEM Poster Package
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cgem-poster}[2024/10/21 CGEM Poster]

%----------------------------------------
%% CGEM Presentation Package Dependencies
\LoadClass[aspectratio=169]{beamer}
\RequirePackage[orientation=landscape, size=a0, scale=2]{beamerposter}

% Preamble
\RequirePackage[export]{adjustbox}
\RequirePackage{amsmath, amsfonts, amssymb} % Math
\RequirePackage{array} % array stretch
\RequirePackage[backend=biber,style=ieee]{biblatex} % Bibliography, change style if you prefer
\RequirePackage{bm} % bold math
\RequirePackage{exscale}
\RequirePackage{fontspec} % Fonts --- If this fails to compile, try XeLaTeX or LuaTeX
\RequirePackage{hyperref} % Links
\RequirePackage{longtable} % explanation of equations table
\RequirePackage[absolute,overlay]{textpos} % Figure placement
\RequirePackage{xcolor} % Colors

%-----------------------------------------
%% Global TeX Settings and Options Processing

% Presentation color options
\definecolor{highlight}{HTML}{FFC000} % Highlight color
\definecolor{cgemblue}{HTML}{90C5FB} % Light CGEM blue
\definecolor{pres-blue}{HTML}{496EAF} % Darkish blue
\definecolor{pres-red}{HTML}{BD3939} % Beautiful red

% Parse the optional color argument
\DeclareOption{dark}{
  \colorlet{ZeroColor}{black}
  \colorlet{FirstColor}{white}
  \colorlet{SecondColor}{cgemblue}
  \colorlet{ThirdColor}{cgemblue!40!red}

  \colorlet{PosterSubtitleColor}{ZeroColor!50}
  \colorlet{PosterBackgroundColor}{ZeroColor!80}

  \newcommand{\LogoFileCGEM}{cgem-logo-dark}
  \newcommand{\LogoFileMines}{mines-logo-dark}
}
\DeclareOption{light}{
  \colorlet{ZeroColor}{white}
  \colorlet{FirstColor}{black}
  \colorlet{SecondColor}{pres-blue}
  \colorlet{ThirdColor}{pres-red}

  \colorlet{PosterSubtitleColor}{FirstColor!80}
  \colorlet{PosterBackgroundColor}{FirstColor!30}

  \newcommand{\LogoFileCGEM}{cgem-logo-light}
  \newcommand{\LogoFileMines}{mines-logo-light}
}
\ProcessOptions\relax

% Font Settings
\setsansfont{Arial}

% Hyperlink settings
\hypersetup{
  colorlinks=true,
  citecolor=SecondColor,
  linkcolor=SecondColor,
  urlcolor=SecondColor,
} % Link to corresponding author

% Background and default text color
\setbeamercolor{background canvas}{bg = ZeroColor}
\setbeamercolor{normal text}{fg = FirstColor}\usebeamercolor*{normal text}

% Turn off Beamer navigation buttons
\beamertemplatenavigationsymbolsempty

%----------------------------------------
% Bibliography

\DeclareFieldFormat{labelnumberwidth}{[\textcolor{SecondColor}{#1}]}

% Bibliography appearance
\setbeamercolor*{bibliography entry title}{fg=FirstColor}
\setbeamercolor*{bibliography entry location}{fg=FirstColor}
\setbeamercolor*{bibliography entry note}{fg=FirstColor}
\setbeamercolor*{bibliography entry author}{fg=FirstColor}
\setbeamercolor*{bibliography item}{fg=FirstColor}

%----------------------------------------
% Citations

% Inline citation settings
\renewcommand*{\citesetup}{
  \color{FirstColor}
  \biburlsetup
}
