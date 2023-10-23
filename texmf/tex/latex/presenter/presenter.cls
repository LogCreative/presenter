%%
%% This is file `presenter.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% presenter.dtx  (with options: `class')
%% ------------------------------------------------------------------------
%% Copyright (C) 2023 Log Creative <logcreative@outlook.com>
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
%% The Current Maintainer of this work is Log Creative.
%% ------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}[2020/10/01]
\ProvidesExplClass
  {presenter}
  {2023-10-23}{0.7.0}
  {A LaTeX presentation framework with seamless migration (class)}
\bool_new:N \g__pretcls_article_bool
\bool_gset_true:N \g__pretcls_article_bool
\DeclareOption { article } { \bool_gset_true:N  \g__pretcls_article_bool }
\DeclareOption { report  } { \bool_gset_false:N \g__pretcls_article_bool }
\DeclareOption* {
  \PassOptionsToClass { \CurrentOption } { article }
  \PassOptionsToClass { \CurrentOption } { report  }
}
\ProcessOptions*
\LoadClass { \bool_if:NTF \g__pretcls_article_bool { article } { report } }
\RequirePackage { presenter }
\endinput
%%
%% End of file `presenter.cls'.
