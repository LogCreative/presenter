%%
%% This is file `presenter.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% presenter.dtx  (with options: `class')
%% ------------------------------------------------------------------------
%% Copyright (C) 2023--2024 Log Creative <logcreative@outlook.com>
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
\NeedsTeXFormat{LaTeX2e}[2022/06/01]
\ProvidesExplClass
  {presenter}
  {2024-01-17}{0.7.2}
  {A LaTeX presentation framework with seamless migration (class)}
\tl_new:N \l__pretcls_base_tl
\clist_new:N \l__pretcls_base_options_clist
\tl_new:N \l__pretcls_bg_tl
\tl_new:N \l__pretcls_fg_tl
\DeclareKeys [ pretcls ] {
  base.tl_gset:N = \l__pretcls_base_tl,
  base.initial:n = article,
  base-options.clist_gset:N = \l__pretcls_base_options_clist,
  base-options.initial:n = ,
  bg.tl_gset:N = \l__pretcls_bg_tl,
  bg.initial:n = default,
  fg.tl_gset:N = \l__pretcls_fg_tl,
  fg.initial:n = default,
}
\DeclareUnknownKeyHandler [ pretcls ] {
  \PassOptionsToClass { \CurrentOption } { \l__pretcls_base_tl }
}
\ProcessKeyOptions [ pretcls ]
\PassOptionsToClass { \l__pretcls_base_options_clist } { \l__pretcls_base_tl }
\LoadClass { \l__pretcls_base_tl }
\PassOptionsToPackage {
  bg = \l__pretcls_bg_tl,
  fg = \l__pretcls_fg_tl
} { presenter }
\RequirePackage { presenter }
\endinput
%%
%% End of file `presenter.cls'.
