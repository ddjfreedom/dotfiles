;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (turn-on-bib-cite bib-cite-minor-mode) "auctex/bib-cite"
;;;;;;  "auctex/bib-cite.el" (18341 54637))
;;; Generated autoloads from auctex/bib-cite.el

(autoload 'bib-cite-minor-mode "auctex/bib-cite" "\
Toggle bib-cite mode.
When bib-cite mode is enabled, citations, labels and refs are highlighted
when the mouse is over them.  Clicking on these highlights with [mouse-2]
runs bib-find, and [mouse-3] runs bib-display.

\(fn ARG)" t nil)

(autoload 'turn-on-bib-cite "auctex/bib-cite" "\
Unconditionally turn on Bib Cite mode.

\(fn)" nil nil)

;;;***

;;;### (autoloads (context-mode) "auctex/context" "auctex/context.el"
;;;;;;  (19707 64211))
;;; Generated autoloads from auctex/context.el

(defalias 'ConTeXt-mode 'context-mode)

(autoload 'context-mode "auctex/context" "\
Major mode in AUCTeX for editing ConTeXt files.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of context-mode-hook.

\(fn)" t nil)

;;;***

;;;### (autoloads (context-en-mode) "auctex/context-en" "auctex/context-en.el"
;;;;;;  (19618 16518))
;;; Generated autoloads from auctex/context-en.el

(autoload 'context-en-mode "auctex/context-en" "\
Major mode for editing files for ConTeXt using its english interface.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of TeX-mode-hook, and then the value
of context-mode-hook.

\(fn)" t nil)

;;;***

;;;### (autoloads (context-nl-mode) "auctex/context-nl" "auctex/context-nl.el"
;;;;;;  (19618 16529))
;;; Generated autoloads from auctex/context-nl.el

(autoload 'context-nl-mode "auctex/context-nl" "\
Major mode for editing files for ConTeXt using its dutch interface.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of TeX-mode-hook, and then the value
of context-mode-hook.

\(fn)" t nil)

;;;***

;;;### (autoloads (font-latex-setup) "auctex/font-latex" "auctex/font-latex.el"
;;;;;;  (20467 57006))
;;; Generated autoloads from auctex/font-latex.el

(autoload 'font-latex-setup "auctex/font-latex" "\
Setup this buffer for LaTeX font-lock.  Usually called from a hook.

\(fn)" nil nil)

;;;***

;;;### (autoloads (docTeX-mode TeX-latex-mode BibTeX-auto-store)
;;;;;;  "auctex/latex" "auctex/latex.el" (20030 45082))
;;; Generated autoloads from auctex/latex.el

(autoload 'BibTeX-auto-store "auctex/latex" "\
This function should be called from `bibtex-mode-hook'.
It will setup BibTeX to store keys in an auto file.

\(fn)" nil nil)

(add-to-list 'auto-mode-alist '("\\.drv\\'" . latex-mode))

(autoload 'TeX-latex-mode "auctex/latex" "\
Major mode in AUCTeX for editing LaTeX files.
See info under AUCTeX for full documentation.

Special commands:
\\{LaTeX-mode-map}

Entering LaTeX mode calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `LaTeX-mode-hook'.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.dtx\\'" . doctex-mode))

(autoload 'docTeX-mode "auctex/latex" "\
Major mode in AUCTeX for editing .dtx files derived from `LaTeX-mode'.
Runs `LaTeX-mode', sets a few variables and
runs the hooks in `docTeX-mode-hook'.

\(fn)" t nil)

(defalias 'TeX-doctex-mode 'docTeX-mode)

;;;***

;;;### (autoloads (multi-prompt-key-value multi-prompt) "auctex/multi-prompt"
;;;;;;  "auctex/multi-prompt.el" (18915 28236))
;;; Generated autoloads from auctex/multi-prompt.el

(autoload 'multi-prompt "auctex/multi-prompt" "\
Completing prompt for a list of strings.  
The first argument SEPARATOR should be the string (of length 1) to
separate the elements in the list.  The second argument UNIQUE should
be non-nil, if each element must be unique.  The remaining elements
are the arguments to `completing-read'.  See that.

\(fn SEPARATOR UNIQUE PROMPT TABLE &optional MP-PREDICATE REQUIRE-MATCH INITIAL HISTORY)" nil nil)

(autoload 'multi-prompt-key-value "auctex/multi-prompt" "\
Read multiple strings, with completion and key=value support.
PROMPT is a string to prompt with, usually ending with a colon
and a space.  TABLE is an alist.  The car of each element should
be a string representing a key and the optional cdr should be a
list with strings to be used as values for the key.

See the documentation for `completing-read' for details on the
other arguments: PREDICATE, REQUIRE-MATCH, INITIAL-INPUT, HIST,
DEF, and INHERIT-INPUT-METHOD.

The return value is the string as entered in the minibuffer.

\(fn PROMPT TABLE &optional PREDICATE REQUIRE-MATCH INITIAL-INPUT HIST DEF INHERIT-INPUT-METHOD)" nil nil)

;;;***

;;;### (autoloads (ams-tex-mode TeX-plain-tex-mode) "auctex/plain-tex"
;;;;;;  "auctex/plain-tex.el" (19707 64159))
;;; Generated autoloads from auctex/plain-tex.el

(autoload 'TeX-plain-tex-mode "auctex/plain-tex" "\
Major mode in AUCTeX for editing plain TeX files.
See info under AUCTeX for documentation.

Special commands:
\\{plain-TeX-mode-map}

Entering `plain-tex-mode' calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of plain-TeX-mode-hook.

\(fn)" t nil)

(autoload 'ams-tex-mode "auctex/plain-tex" "\
Major mode in AUCTeX for editing AmS-TeX files.
See info under AUCTeX for documentation.

Special commands:
\\{AmSTeX-mode-map}

Entering AmS-tex-mode calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `AmS-TeX-mode-hook'.

\(fn)" t nil)

;;;***

;;;### (autoloads (preview-report-bug LaTeX-preview-setup preview-install-styles)
;;;;;;  "auctex/preview/preview" "auctex/preview/preview.el" (19772
;;;;;;  31043))
;;; Generated autoloads from auctex/preview/preview.el

(autoload 'preview-install-styles "auctex/preview/preview" "\
Installs the TeX style files into a permanent location.
This must be in the TeX search path.  If FORCE-OVERWRITE is greater
than 1, files will get overwritten without query, if it is less
than 1 or nil, the operation will fail.  The default of 1 for interactive
use will query.

Similarly FORCE-SAVE can be used for saving
`preview-TeX-style-dir' to record the fact that the uninstalled
files are no longer needed in the search path.

\(fn DIR &optional FORCE-OVERWRITE FORCE-SAVE)" t nil)

(autoload 'LaTeX-preview-setup "auctex/preview/preview" "\
Hook function for embedding the preview package into AUCTeX.
This is called by `LaTeX-mode-hook' and changes AUCTeX variables
to add the preview functionality.

\(fn)" nil nil)
 (add-hook 'LaTeX-mode-hook #'LaTeX-preview-setup)

(autoload 'preview-report-bug "auctex/preview/preview" "\
Report a bug in the preview-latex package.

\(fn)" t nil)

;;;***

;;;### (autoloads (TeX-submit-bug-report TeX-auto-generate-global
;;;;;;  TeX-auto-generate TeX-tex-mode) "auctex/tex" "auctex/tex.el"
;;;;;;  (20522 38819))
;;; Generated autoloads from auctex/tex.el

(autoload 'TeX-tex-mode "auctex/tex" "\
Major mode in AUCTeX for editing TeX or LaTeX files.
Tries to guess whether this file is for plain TeX or LaTeX.

The algorithm is as follows:

   1) if the file is empty or `TeX-force-default-mode' is not set to nil,
      `TeX-default-mode' is chosen
   2) If \\documentstyle or \\begin{, \\section{, \\part{ or \\chapter{ is
      found, `latex-mode' is selected.
   3) Otherwise, use `plain-tex-mode'

\(fn)" t nil)

(autoload 'TeX-auto-generate "auctex/tex" "\
Generate style file for TEX and store it in AUTO.
If TEX is a directory, generate style files for all files in the directory.

\(fn TEX AUTO)" t nil)

(autoload 'TeX-auto-generate-global "auctex/tex" "\
Create global auto directory for global TeX macro definitions.

\(fn)" t nil)

(autoload 'TeX-submit-bug-report "auctex/tex" "\
Submit a bug report on AUCTeX via mail.

Don't hesitate to report any problems or inaccurate documentation.

If you don't have setup sending mail from (X)Emacs, please copy the
output buffer into your mail program, as it gives us important
information about your AUCTeX version and AUCTeX configuration.

\(fn)" t nil)

;;;***

;;;### (autoloads (LaTeX-install-toolbar TeX-install-toolbar) "auctex/tex-bar"
;;;;;;  "auctex/tex-bar.el" (18580 49499))
;;; Generated autoloads from auctex/tex-bar.el

(autoload 'TeX-install-toolbar "auctex/tex-bar" "\
Install toolbar buttons for TeX mode.

\(fn)" t nil)

(autoload 'LaTeX-install-toolbar "auctex/tex-bar" "\
Install toolbar buttons for LaTeX mode.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/tex-fold" "auctex/tex-fold.el" (19887
;;;;;;  15736))
;;; Generated autoloads from auctex/tex-fold.el
 (autoload 'TeX-fold-mode "tex-fold" "Minor mode for hiding and revealing macros and environments." t)

(defalias 'tex-fold-mode 'TeX-fold-mode)

;;;***

;;;### (autoloads (tex-font-setup) "auctex/tex-font" "auctex/tex-font.el"
;;;;;;  (18341 54636))
;;; Generated autoloads from auctex/tex-font.el

(autoload 'tex-font-setup "auctex/tex-font" "\
Setup font lock support for TeX.

\(fn)" nil nil)

;;;***

;;;### (autoloads (TeX-texinfo-mode) "auctex/tex-info" "auctex/tex-info.el"
;;;;;;  (19994 65094))
;;; Generated autoloads from auctex/tex-info.el

(defalias 'Texinfo-mode 'texinfo-mode)

(autoload 'TeX-texinfo-mode "auctex/tex-info" "\
Major mode in AUCTeX for editing Texinfo files.

Special commands:
\\{Texinfo-mode-map}

Entering Texinfo mode calls the value of `text-mode-hook'  and then the
value of `Texinfo-mode-hook'.

\(fn)" t nil)

;;;***

;;;### (autoloads (japanese-latex-mode japanese-plain-tex-mode) "auctex/tex-jp"
;;;;;;  "auctex/tex-jp.el" (18768 5174))
;;; Generated autoloads from auctex/tex-jp.el

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

;;;***

;;;### (autoloads (texmathp-match-switch texmathp) "auctex/texmathp"
;;;;;;  "auctex/texmathp.el" (18489 3128))
;;; Generated autoloads from auctex/texmathp.el

(autoload 'texmathp "auctex/texmathp" "\
Determine if point is inside (La)TeX math mode.
Returns t or nil.  Additional info is placed into `texmathp-why'.
The functions assumes that you have (almost) syntactically correct (La)TeX in
the buffer.
See the variable `texmathp-tex-commands' about which commands are checked.

\(fn)" t nil)

(autoload 'texmathp-match-switch "auctex/texmathp" "\
Search backward for any of the math switches.
Limit searched to BOUND.

\(fn BOUND)" nil nil)

;;;***

;;;### (autoloads nil "auctex/toolbar-x" "auctex/toolbar-x.el" (18580
;;;;;;  49487))
;;; Generated autoloads from auctex/toolbar-x.el
 (autoload 'toolbarx-install-toolbar "toolbar-x")

;;;***

;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-all el-get-version) "el-get/el-get"
;;;;;;  "el-get/el-get.el" (20542 51218))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get/el-get-list-packages"
;;;;;;  "el-get/el-get-list-packages.el" (20542 51218))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (htmlize-many-files-dired htmlize-many-files htmlize-file
;;;;;;  htmlize-region htmlize-buffer) "org-mode/contrib/lisp/htmlize"
;;;;;;  "org-mode/contrib/lisp/htmlize.el" (20542 52509))
;;; Generated autoloads from org-mode/contrib/lisp/htmlize.el

(autoload 'htmlize-buffer "org-mode/contrib/lisp/htmlize" "\
Convert BUFFER to HTML, preserving colors and decorations.

The generated HTML is available in a new buffer, which is returned.
When invoked interactively, the new buffer is selected in the current
window.  The title of the generated document will be set to the buffer's
file name or, if that's not available, to the buffer's name.

Note that htmlize doesn't fontify your buffers, it only uses the
decorations that are already present.  If you don't set up font-lock or
something else to fontify your buffers, the resulting HTML will be
plain.  Likewise, if you don't like the choice of colors, fix the mode
that created them, or simply alter the faces it uses.

\(fn &optional BUFFER)" t nil)

(autoload 'htmlize-region "org-mode/contrib/lisp/htmlize" "\
Convert the region to HTML, preserving colors and decorations.
See `htmlize-buffer' for details.

\(fn BEG END)" t nil)

(autoload 'htmlize-file "org-mode/contrib/lisp/htmlize" "\
Load FILE, fontify it, convert it to HTML, and save the result.

Contents of FILE are inserted into a temporary buffer, whose major mode
is set with `normal-mode' as appropriate for the file type.  The buffer
is subsequently fontified with `font-lock' and converted to HTML.  Note
that, unlike `htmlize-buffer', this function explicitly turns on
font-lock.  If a form of highlighting other than font-lock is desired,
please use `htmlize-buffer' directly on buffers so highlighted.

Buffers currently visiting FILE are unaffected by this function.  The
function does not change current buffer or move the point.

If TARGET is specified and names a directory, the resulting file will be
saved there instead of to FILE's directory.  If TARGET is specified and
does not name a directory, it will be used as output file name.

\(fn FILE &optional TARGET)" t nil)

(autoload 'htmlize-many-files "org-mode/contrib/lisp/htmlize" "\
Convert FILES to HTML and save the corresponding HTML versions.

FILES should be a list of file names to convert.  This function calls
`htmlize-file' on each file; see that function for details.  When
invoked interactively, you are prompted for a list of files to convert,
terminated with RET.

If TARGET-DIRECTORY is specified, the HTML files will be saved to that
directory.  Normally, each HTML file is saved to the directory of the
corresponding source file.

\(fn FILES &optional TARGET-DIRECTORY)" t nil)

(autoload 'htmlize-many-files-dired "org-mode/contrib/lisp/htmlize" "\
HTMLize dired-marked files.

\(fn ARG &optional TARGET-DIRECTORY)" t nil)

;;;***

;;;### (autoloads (org-contacts) "org-mode/contrib/lisp/org-contacts"
;;;;;;  "org-mode/contrib/lisp/org-contacts.el" (20542 52509))
;;; Generated autoloads from org-mode/contrib/lisp/org-contacts.el

(autoload 'org-contacts "org-mode/contrib/lisp/org-contacts" "\
Create agenda view for contacts matching NAME.

\(fn NAME)" t nil)

;;;***

;;;### (autoloads (org-e-ascii-export-to-ascii org-e-ascii-export-as-ascii)
;;;;;;  "org-mode/contrib/lisp/org-e-ascii" "org-mode/contrib/lisp/org-e-ascii.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/contrib/lisp/org-e-ascii.el

(autoload 'org-e-ascii-export-as-ascii "org-mode/contrib/lisp/org-e-ascii" "\
Export current buffer to a text buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, strip title, table
of contents and footnote definitions from output.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org E-ASCII Export*\", which
will be displayed when `org-export-show-temporary-export-buffer'
is non-nil.

\(fn &optional SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-e-ascii-export-to-ascii "org-mode/contrib/lisp/org-e-ascii" "\
Export current buffer to a text file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, strip title, table
of contents and footnote definitions from output.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

When optional argument PUB-DIR is set, use it as the publishing
directory.

Return output file's name.

\(fn &optional SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST PUB-DIR)" t nil)

;;;***

;;;### (autoloads (org-e-beamer-insert-options-template org-e-beamer-select-environment
;;;;;;  org-e-beamer-export-to-pdf org-e-beamer-export-to-latex org-e-beamer-export-as-latex
;;;;;;  org-e-beamer-mode) "org-mode/contrib/lisp/org-e-beamer" "org-mode/contrib/lisp/org-e-beamer.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/contrib/lisp/org-e-beamer.el

(autoload 'org-e-beamer-mode "org-mode/contrib/lisp/org-e-beamer" "\
Support for editing Beamer oriented Org mode files.

\(fn &optional ARG)" t nil)

(autoload 'org-e-beamer-export-as-latex "org-mode/contrib/lisp/org-e-beamer" "\
Export current buffer as a Beamer buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org E-BEAMER Export*\", which
will be displayed when `org-export-show-temporary-export-buffer'
is non-nil.

\(fn &optional SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-e-beamer-export-to-latex "org-mode/contrib/lisp/org-e-beamer" "\
Export current buffer as a Beamer presentation (tex).

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

When optional argument PUB-DIR is set, use it as the publishing
directory.

Return output file's name.

\(fn &optional SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST PUB-DIR)" t nil)

(autoload 'org-e-beamer-export-to-pdf "org-mode/contrib/lisp/org-e-beamer" "\
Export current buffer as a Beamer presentation (PDF).

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

When optional argument PUB-DIR is set, use it as the publishing
directory.

Return PDF file's name.

\(fn &optional SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST PUB-DIR)" t nil)

(autoload 'org-e-beamer-select-environment "org-mode/contrib/lisp/org-e-beamer" "\
Select the environment to be used by beamer for this entry.
While this uses (for convenience) a tag selection interface, the
result of this command will be that the BEAMER_env *property* of
the entry is set.

In addition to this, the command will also set a tag as a visual
aid, but the tag does not have any semantic meaning.

\(fn)" t nil)

(autoload 'org-e-beamer-insert-options-template "org-mode/contrib/lisp/org-e-beamer" "\
Insert a settings template, to make sure users do this right.

\(fn &optional KIND)" t nil)

;;;***

;;;### (autoloads (org-e-html-export-to-html org-e-html-export-as-html
;;;;;;  org-export-e-htmlize-generate-css) "org-mode/contrib/lisp/org-e-html"
;;;;;;  "org-mode/contrib/lisp/org-e-html.el" (20542 52509))
;;; Generated autoloads from org-mode/contrib/lisp/org-e-html.el

(put 'org-e-html-style-include-default 'safe-local-variable 'booleanp)

(put 'org-e-html-style 'safe-local-variable 'stringp)

(put 'org-e-html-style-extra 'safe-local-variable 'stringp)

(autoload 'org-export-e-htmlize-generate-css "org-mode/contrib/lisp/org-e-html" "\
Create the CSS for all font definitions in the current Emacs session.
Use this to create face definitions in your CSS style file that can then
be used by code snippets transformed by htmlize.
This command just produces a buffer that contains class definitions for all
faces used in the current Emacs session.  You can copy and paste the ones you
need into your CSS file.

If you then set `org-export-e-htmlize-output-type' to `css', calls to
the function `org-export-e-htmlize-region-for-paste' will produce code
that uses these same face definitions.

\(fn)" t nil)

(autoload 'org-e-html-export-as-html "org-mode/contrib/lisp/org-e-html" "\
Export current buffer to an HTML buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"<body>\" and \"</body>\" tags.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org E-HTML Export*\", which
will be displayed when `org-export-show-temporary-export-buffer'
is non-nil.

\(fn &optional SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-e-html-export-to-html "org-mode/contrib/lisp/org-e-html" "\
Export current buffer to a HTML file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"<body>\" and \"</body>\" tags.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

When optional argument PUB-DIR is set, use it as the publishing
directory.

Return output file's name.

\(fn &optional SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST PUB-DIR)" t nil)

;;;***

;;;### (autoloads (org-e-latex-export-to-pdf org-e-latex-export-to-latex
;;;;;;  org-e-latex-export-as-latex) "org-mode/contrib/lisp/org-e-latex"
;;;;;;  "org-mode/contrib/lisp/org-e-latex.el" (20542 52509))
;;; Generated autoloads from org-mode/contrib/lisp/org-e-latex.el

(autoload 'org-e-latex-export-as-latex "org-mode/contrib/lisp/org-e-latex" "\
Export current buffer as a LaTeX buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org E-LATEX Export*\", which
will be displayed when `org-export-show-temporary-export-buffer'
is non-nil.

\(fn &optional SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-e-latex-export-to-latex "org-mode/contrib/lisp/org-e-latex" "\
Export current buffer to a LaTeX file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

When optional argument PUB-DIR is set, use it as the publishing
directory.

Return output file's name.

\(fn &optional SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST PUB-DIR)" t nil)

(autoload 'org-e-latex-export-to-pdf "org-mode/contrib/lisp/org-e-latex" "\
Export current buffer to LaTeX then process through to PDF.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

When optional argument PUB-DIR is set, use it as the publishing
directory.

Return PDF file's name.

\(fn &optional SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST PUB-DIR)" t nil)

;;;***

;;;### (autoloads (org-e-odt-convert org-e-odt-export-to-odt org-e-odt-export-as-odf-and-open
;;;;;;  org-e-odt-export-as-odf) "org-mode/contrib/lisp/org-e-odt"
;;;;;;  "org-mode/contrib/lisp/org-e-odt.el" (20542 52509))
;;; Generated autoloads from org-mode/contrib/lisp/org-e-odt.el

(autoload 'org-e-odt-export-as-odf "org-mode/contrib/lisp/org-e-odt" "\
Export LATEX-FRAG as OpenDocument formula file ODF-FILE.
Use `org-create-math-formula' to convert LATEX-FRAG first to
MathML.  When invoked as an interactive command, use
`org-latex-regexps' to infer LATEX-FRAG from currently active
region.  If no LaTeX fragments are found, prompt for it.  Push
MathML source to kill ring, if `org-export-copy-to-kill-ring' is
non-nil.

\(fn LATEX-FRAG &optional ODF-FILE)" t nil)

(autoload 'org-e-odt-export-as-odf-and-open "org-mode/contrib/lisp/org-e-odt" "\
Export LaTeX fragment as OpenDocument formula and immediately open it.
Use `org-e-odt-export-as-odf' to read LaTeX fragment and OpenDocument
formula file.

\(fn)" t nil)

(autoload 'org-e-odt-export-to-odt "org-mode/contrib/lisp/org-e-odt" "\
Export current buffer to a HTML file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

When optional argument PUB-DIR is set, use it as the publishing
directory.

Return output file's name.

\(fn &optional SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST PUB-DIR)" t nil)

(autoload 'org-e-odt-convert "org-mode/contrib/lisp/org-e-odt" "\
Convert IN-FILE to format OUT-FMT using a command line converter.
IN-FILE is the file to be converted.  If unspecified, it defaults
to variable `buffer-file-name'.  OUT-FMT is the desired output
format.  Use `org-e-odt-convert-process' as the converter.
If PREFIX-ARG is non-nil then the newly converted file is opened
using `org-open-file'.

\(fn &optional IN-FILE OUT-FMT PREFIX-ARG)" t nil)

;;;***

;;;### (autoloads (org-e-publish-current-project org-e-publish-current-file
;;;;;;  org-e-publish-all org-e-publish) "org-mode/contrib/lisp/org-e-publish"
;;;;;;  "org-mode/contrib/lisp/org-e-publish.el" (20542 52509))
;;; Generated autoloads from org-mode/contrib/lisp/org-e-publish.el

(defalias 'org-e-publish-project 'org-e-publish)

(autoload 'org-e-publish "org-mode/contrib/lisp/org-e-publish" "\
Publish PROJECT.

\(fn PROJECT &optional FORCE)" t nil)

(autoload 'org-e-publish-all "org-mode/contrib/lisp/org-e-publish" "\
Publish all projects.
With prefix argument, remove all files in the timestamp
directory and force publishing all files.

\(fn &optional FORCE)" t nil)

(autoload 'org-e-publish-current-file "org-mode/contrib/lisp/org-e-publish" "\
Publish the current file.
With prefix argument, force publish the file.

\(fn &optional FORCE)" t nil)

(autoload 'org-e-publish-current-project "org-mode/contrib/lisp/org-e-publish" "\
Publish the project associated with the current file.
With a prefix argument, force publishing of all files in
the project.

\(fn &optional FORCE)" t nil)

;;;***

;;;### (autoloads (org-export-dispatch) "org-mode/contrib/lisp/org-export"
;;;;;;  "org-mode/contrib/lisp/org-export.el" (20542 52509))
;;; Generated autoloads from org-mode/contrib/lisp/org-export.el

(autoload 'org-export-dispatch "org-mode/contrib/lisp/org-export" "\
Export dispatcher for Org mode.

It provides an access to common export related tasks in a buffer.
Its interface comes in two flavours: standard and expert.  While
both share the same set of bindings, only the former displays the
valid keys associations.  Set `org-export-dispatch-use-expert-ui'
to switch to one or the other.

Return an error if key pressed has no associated command.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-export-generic org-set-generic-type) "org-mode/contrib/lisp/org-export-generic"
;;;;;;  "org-mode/contrib/lisp/org-export-generic.el" (20542 52509))
;;; Generated autoloads from org-mode/contrib/lisp/org-export-generic.el

(autoload 'org-set-generic-type "org-mode/contrib/lisp/org-export-generic" "\
Adds a TYPE and DEFINITION to the existing list of defined generic
export definitions.

\(fn TYPE DEFINITION)" nil nil)

(autoload 'org-export-generic "org-mode/contrib/lisp/org-export-generic" "\
Export the outline as generic output.
If there is an active region, export only the region.
The prefix ARG specifies how many levels of the outline should become
underlined headlines.  The default is 3.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads (org-md-export-to-markdown org-md-export-as-markdown)
;;;;;;  "org-mode/contrib/lisp/org-md" "org-mode/contrib/lisp/org-md.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/contrib/lisp/org-md.el

(autoload 'org-md-export-as-markdown "org-mode/contrib/lisp/org-md" "\
Export current buffer to a text buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Export is done in a buffer named \"*Org MD Export*\", which will
be displayed when `org-export-show-temporary-export-buffer' is
non-nil.

\(fn &optional SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-md-export-to-markdown "org-mode/contrib/lisp/org-md" "\
Export current buffer to a Markdown file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument PUB-DIR is set, use it as the publishing
directory.

Return output file's name.

\(fn &optional SUBTREEP VISIBLE-ONLY PUB-DIR)" t nil)

;;;***

;;;### (autoloads (org-registry-update org-registry-insinuate org-registry-initialize
;;;;;;  org-registry-visit org-registry-show) "org-mode/contrib/lisp/org-registry"
;;;;;;  "org-mode/contrib/lisp/org-registry.el" (20542 52509))
;;; Generated autoloads from org-mode/contrib/lisp/org-registry.el

(autoload 'org-registry-show "org-mode/contrib/lisp/org-registry" "\
Show Org files where there are links pointing to the current
buffer.

\(fn &optional VISIT)" t nil)

(autoload 'org-registry-visit "org-mode/contrib/lisp/org-registry" "\
If an Org file contains a link to the current location, visit
this file.

\(fn)" t nil)

(autoload 'org-registry-initialize "org-mode/contrib/lisp/org-registry" "\
Initialize `org-registry-alist'.
If FROM-SCRATCH is non-nil or the registry does not exist yet,
create a new registry from scratch and eval it. If the registry
exists, eval `org-registry-file' and make it the new value for
`org-registry-alist'.

\(fn &optional FROM-SCRATCH)" t nil)

(autoload 'org-registry-insinuate "org-mode/contrib/lisp/org-registry" "\
Call `org-registry-update' after saving in Org-mode.
Use with caution.  This could slow down things a bit.

\(fn)" t nil)

(autoload 'org-registry-update "org-mode/contrib/lisp/org-registry" "\
Update the registry for the current Org file.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-toc-show) "org-mode/contrib/lisp/org-toc"
;;;;;;  "org-mode/contrib/lisp/org-toc.el" (20542 52509))
;;; Generated autoloads from org-mode/contrib/lisp/org-toc.el

(autoload 'org-toc-show "org-mode/contrib/lisp/org-toc" "\
Show the table of contents of the current Org-mode buffer.

\(fn &optional DEPTH POSITION)" t nil)

;;;***

;;;### (autoloads (org-track-compile-org org-track-fetch-package)
;;;;;;  "org-mode/contrib/lisp/org-track" "org-mode/contrib/lisp/org-track.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/contrib/lisp/org-track.el

(autoload 'org-track-fetch-package "org-mode/contrib/lisp/org-track" "\
Fetch Org package depending on `org-track-fetch-package-extension'.
If DIRECTORY is defined, unpack the package there, i.e. add the
subdirectory org-mode/ to DIRECTORY.

\(fn &optional DIRECTORY)" t nil)

(autoload 'org-track-compile-org "org-mode/contrib/lisp/org-track" "\
Compile all *.el files that come with org-mode.
Generate the autoloads file `org-install.el'.

DIRECTORY is where the directory org-mode/ lives (i.e. the
          parent directory of your local repo.

\(fn &optional DIRECTORY)" t nil)

;;;***

;;;### (autoloads (org2rem-combine-agenda-files org2rem-all-agenda-files
;;;;;;  org2rem-this-file) "org-mode/contrib/lisp/org2rem" "org-mode/contrib/lisp/org2rem.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/contrib/lisp/org2rem.el

(autoload 'org2rem-this-file "org-mode/contrib/lisp/org2rem" "\
Export current file as an Remind file.
The Remind file will be located in the same directory as the Org-mode
file, but with extension `.rem'.

\(fn)" t nil)

(autoload 'org2rem-all-agenda-files "org-mode/contrib/lisp/org2rem" "\
Export all files in `org-agenda-files' to Remind .rem files.
Each Remind file will be located in the same directory as the Org-mode
file, but with extension `.rem'.

\(fn)" t nil)

(autoload 'org2rem-combine-agenda-files "org-mode/contrib/lisp/org2rem" "\
Export all files in `org-agenda-files' to a single combined Remind file.
The file is stored under the name `org-combined-agenda-remind-file'.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-babel-mark-block org-babel-previous-src-block
;;;;;;  org-babel-next-src-block org-babel-goto-named-result org-babel-goto-named-src-block
;;;;;;  org-babel-goto-src-block-head org-babel-hide-result-toggle-maybe
;;;;;;  org-babel-sha1-hash org-babel-execute-subtree org-babel-execute-buffer
;;;;;;  org-babel-map-executables org-babel-map-call-lines org-babel-map-inline-src-blocks
;;;;;;  org-babel-map-src-blocks org-babel-open-src-block-result
;;;;;;  org-babel-switch-to-session-with-code org-babel-switch-to-session
;;;;;;  org-babel-initiate-session org-babel-load-in-session org-babel-insert-header-arg
;;;;;;  org-babel-check-src-block org-babel-expand-src-block org-babel-execute-src-block
;;;;;;  org-babel-pop-to-session-maybe org-babel-load-in-session-maybe
;;;;;;  org-babel-expand-src-block-maybe org-babel-view-src-block-info
;;;;;;  org-babel-execute-maybe org-babel-execute-safely-maybe) "org-mode/lisp/ob"
;;;;;;  "org-mode/lisp/ob.el" (20542 52509))
;;; Generated autoloads from org-mode/lisp/ob.el

(autoload 'org-babel-execute-safely-maybe "org-mode/lisp/ob" "\


\(fn)" nil nil)

(autoload 'org-babel-execute-maybe "org-mode/lisp/ob" "\


\(fn)" t nil)

(autoload 'org-babel-view-src-block-info "org-mode/lisp/ob" "\
Display information on the current source block.
This includes header arguments, language and name, and is largely
a window into the `org-babel-get-src-block-info' function.

\(fn)" t nil)

(autoload 'org-babel-expand-src-block-maybe "org-mode/lisp/ob" "\
Conditionally expand a source block.
Detect if this is context for a org-babel src-block and if so
then run `org-babel-expand-src-block'.

\(fn)" t nil)

(autoload 'org-babel-load-in-session-maybe "org-mode/lisp/ob" "\
Conditionally load a source block in a session.
Detect if this is context for a org-babel src-block and if so
then run `org-babel-load-in-session'.

\(fn)" t nil)

(autoload 'org-babel-pop-to-session-maybe "org-mode/lisp/ob" "\
Conditionally pop to a session.
Detect if this is context for a org-babel src-block and if so
then run `org-babel-pop-to-session'.

\(fn)" t nil)

(autoload 'org-babel-execute-src-block "org-mode/lisp/ob" "\
Execute the current source code block.
Insert the results of execution into the buffer.  Source code
execution and the collection and formatting of results can be
controlled through a variety of header arguments.

With prefix argument ARG, force re-execution even if an existing
result cached in the buffer would otherwise have been returned.

Optionally supply a value for INFO in the form returned by
`org-babel-get-src-block-info'.

Optionally supply a value for PARAMS which will be merged with
the header arguments specified at the front of the source code
block.

\(fn &optional ARG INFO PARAMS)" t nil)

(autoload 'org-babel-expand-src-block "org-mode/lisp/ob" "\
Expand the current source code block.
Expand according to the source code block's header
arguments and pop open the results in a preview buffer.

\(fn &optional ARG INFO PARAMS)" t nil)

(autoload 'org-babel-check-src-block "org-mode/lisp/ob" "\
Check for misspelled header arguments in the current code block.

\(fn)" t nil)

(autoload 'org-babel-insert-header-arg "org-mode/lisp/ob" "\
Insert a header argument selecting from lists of common args and values.

\(fn)" t nil)

(autoload 'org-babel-load-in-session "org-mode/lisp/ob" "\
Load the body of the current source-code block.
Evaluate the header arguments for the source block before
entering the session.  After loading the body this pops open the
session.

\(fn &optional ARG INFO)" t nil)

(autoload 'org-babel-initiate-session "org-mode/lisp/ob" "\
Initiate session for current code block.
If called with a prefix argument then resolve any variable
references in the header arguments and assign these variables in
the session.  Copy the body of the code block to the kill ring.

\(fn &optional ARG INFO)" t nil)

(autoload 'org-babel-switch-to-session "org-mode/lisp/ob" "\
Switch to the session of the current code block.
Uses `org-babel-initiate-session' to start the session.  If called
with a prefix argument then this is passed on to
`org-babel-initiate-session'.

\(fn &optional ARG INFO)" t nil)

(autoload 'org-babel-switch-to-session-with-code "org-mode/lisp/ob" "\
Switch to code buffer and display session.

\(fn &optional ARG INFO)" t nil)

(autoload 'org-babel-open-src-block-result "org-mode/lisp/ob" "\
If `point' is on a src block then open the results of the
source code block, otherwise return nil.  With optional prefix
argument RE-RUN the source-code block is evaluated even if
results already exist.

\(fn &optional RE-RUN)" t nil)

(autoload 'org-babel-map-src-blocks "org-mode/lisp/ob" "\
Evaluate BODY forms on each source-block in FILE.
If FILE is nil evaluate BODY forms on source blocks in current
buffer.  During evaluation of BODY the following local variables
are set relative to the currently matched code block.

full-block ------- string holding the entirety of the code block
beg-block -------- point at the beginning of the code block
end-block -------- point at the end of the matched code block
lang ------------- string holding the language of the code block
beg-lang --------- point at the beginning of the lang
end-lang --------- point at the end of the lang
switches --------- string holding the switches
beg-switches ----- point at the beginning of the switches
end-switches ----- point at the end of the switches
header-args ------ string holding the header-args
beg-header-args -- point at the beginning of the header-args
end-header-args -- point at the end of the header-args
body ------------- string holding the body of the code block
beg-body --------- point at the beginning of the body
end-body --------- point at the end of the body

\(fn FILE &rest BODY)" nil (quote macro))

(put 'org-babel-map-src-blocks 'lisp-indent-function '1)

(autoload 'org-babel-map-inline-src-blocks "org-mode/lisp/ob" "\
Evaluate BODY forms on each inline source-block in FILE.
If FILE is nil evaluate BODY forms on source blocks in current
buffer.

\(fn FILE &rest BODY)" nil (quote macro))

(put 'org-babel-map-inline-src-blocks 'lisp-indent-function '1)

(autoload 'org-babel-map-call-lines "org-mode/lisp/ob" "\
Evaluate BODY forms on each call line in FILE.
If FILE is nil evaluate BODY forms on source blocks in current
buffer.

\(fn FILE &rest BODY)" nil (quote macro))

(put 'org-babel-map-call-lines 'lisp-indent-function '1)

(autoload 'org-babel-map-executables "org-mode/lisp/ob" "\


\(fn FILE &rest BODY)" nil (quote macro))

(put 'org-babel-map-executables 'lisp-indent-function '1)

(autoload 'org-babel-execute-buffer "org-mode/lisp/ob" "\
Execute source code blocks in a buffer.
Call `org-babel-execute-src-block' on every source block in
the current buffer.

\(fn &optional ARG)" t nil)

(autoload 'org-babel-execute-subtree "org-mode/lisp/ob" "\
Execute source code blocks in a subtree.
Call `org-babel-execute-src-block' on every source block in
the current subtree.

\(fn &optional ARG)" t nil)

(autoload 'org-babel-sha1-hash "org-mode/lisp/ob" "\
Generate an sha1 hash based on the value of info.

\(fn &optional INFO)" t nil)

(autoload 'org-babel-hide-result-toggle-maybe "org-mode/lisp/ob" "\
Toggle visibility of result at point.

\(fn)" t nil)

(autoload 'org-babel-goto-src-block-head "org-mode/lisp/ob" "\
Go to the beginning of the current code block.

\(fn)" t nil)

(autoload 'org-babel-goto-named-src-block "org-mode/lisp/ob" "\
Go to a named source-code block.

\(fn NAME)" t nil)

(autoload 'org-babel-goto-named-result "org-mode/lisp/ob" "\
Go to a named result.

\(fn NAME)" t nil)

(autoload 'org-babel-next-src-block "org-mode/lisp/ob" "\
Jump to the next source block.
With optional prefix argument ARG, jump forward ARG many source blocks.

\(fn &optional ARG)" t nil)

(autoload 'org-babel-previous-src-block "org-mode/lisp/ob" "\
Jump to the previous source block.
With optional prefix argument ARG, jump backward ARG many source blocks.

\(fn &optional ARG)" t nil)

(autoload 'org-babel-mark-block "org-mode/lisp/ob" "\
Mark current src block.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-babel-describe-bindings) "org-mode/lisp/ob-keys"
;;;;;;  "org-mode/lisp/ob-keys.el" (20542 52509))
;;; Generated autoloads from org-mode/lisp/ob-keys.el

(autoload 'org-babel-describe-bindings "org-mode/lisp/ob-keys" "\
Describe all keybindings behind `org-babel-key-prefix'.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-babel-lob-get-info org-babel-lob-execute-maybe
;;;;;;  org-babel-lob-ingest) "org-mode/lisp/ob-lob" "org-mode/lisp/ob-lob.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/lisp/ob-lob.el

(autoload 'org-babel-lob-ingest "org-mode/lisp/ob-lob" "\
Add all named source-blocks defined in FILE to
`org-babel-library-of-babel'.

\(fn &optional FILE)" t nil)

(autoload 'org-babel-lob-execute-maybe "org-mode/lisp/ob-lob" "\
Execute a Library of Babel source block, if appropriate.
Detect if this is context for a Library Of Babel source block and
if so then run the appropriate source block from the Library.

\(fn)" t nil)

(autoload 'org-babel-lob-get-info "org-mode/lisp/ob-lob" "\
Return a Library of Babel function call as a string.

\(fn)" nil nil)

;;;***

;;;### (autoloads (org-babel-tangle org-babel-tangle-file org-babel-load-file
;;;;;;  org-babel-tangle-lang-exts) "org-mode/lisp/ob-tangle" "org-mode/lisp/ob-tangle.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/lisp/ob-tangle.el

(defvar org-babel-tangle-lang-exts '(("emacs-lisp" . "el")) "\
Alist mapping languages to their file extensions.
The key is the language name, the value is the string that should
be inserted as the extension commonly used to identify files
written in this language.  If no entry is found in this list,
then the name of the language is used.")

(custom-autoload 'org-babel-tangle-lang-exts "org-mode/lisp/ob-tangle" t)

(autoload 'org-babel-load-file "org-mode/lisp/ob-tangle" "\
Load Emacs Lisp source code blocks in the Org-mode FILE.
This function exports the source code using
`org-babel-tangle' and then loads the resulting file using
`load-file'.

\(fn FILE)" t nil)

(autoload 'org-babel-tangle-file "org-mode/lisp/ob-tangle" "\
Extract the bodies of source code blocks in FILE.
Source code blocks are extracted with `org-babel-tangle'.
Optional argument TARGET-FILE can be used to specify a default
export file for all source blocks.  Optional argument LANG can be
used to limit the exported source code blocks by language.

\(fn FILE &optional TARGET-FILE LANG)" t nil)

(autoload 'org-babel-tangle "org-mode/lisp/ob-tangle" "\
Write code blocks to source-specific files.
Extract the bodies of all source code blocks from the current
file into their own source-specific files.  Optional argument
TARGET-FILE can be used to specify a default export file for all
source blocks.  Optional argument LANG can be used to limit the
exported source code blocks by language.

\(fn &optional ONLY-THIS-BLOCK TARGET-FILE LANG)" t nil)

;;;***

;;;### (autoloads (org-unindent-buffer org-transpose-element org-narrow-to-element
;;;;;;  org-mark-element org-drag-element-forward org-drag-element-backward
;;;;;;  org-up-element org-backward-element org-forward-element org-customize
;;;;;;  org-reload org-require-autoloaded-modules org-submit-bug-report
;;;;;;  org-cycle-agenda-files org-switchb org-map-entries org-update-all-dblocks
;;;;;;  org-open-link-from-string org-open-at-point-global org-insert-link-global
;;;;;;  org-store-link org-run-like-in-org-mode turn-on-orgstruct++
;;;;;;  turn-on-orgstruct orgstruct-mode org-global-cycle org-mode
;;;;;;  org-version org-babel-do-load-languages) "org-mode/lisp/org"
;;;;;;  "org-mode/lisp/org.el" (20542 52509))
;;; Generated autoloads from org-mode/lisp/org.el

(autoload 'org-babel-do-load-languages "org-mode/lisp/org" "\
Load the languages defined in `org-babel-load-languages'.

\(fn SYM VALUE)" nil nil)

(autoload 'org-version "org-mode/lisp/org" "\
Show the org-mode version in the echo area.
With prefix argument HERE, insert it at point.
When FULL is non-nil, use a verbose version string.
When MESSAGE is non-nil, display a message with the version.

\(fn &optional HERE FULL MESSAGE)" t nil)

(autoload 'org-mode "org-mode/lisp/org" "\
Outline-based notes management and organizer, alias
\"Carsten's outline-mode for keeping track of everything.\"

Org-mode develops organizational tasks around a NOTES file which
contains information about projects as plain text.  Org-mode is
implemented on top of outline-mode, which is ideal to keep the content
of large files well structured.  It supports ToDo items, deadlines and
time stamps, which magically appear in the diary listing of the Emacs
calendar.  Tables are easily created with a built-in table editor.
Plain text URL-like links connect to websites, emails (VM), Usenet
messages (Gnus), BBDB entries, and any files related to the project.
For printing and sharing of notes, an Org-mode file (or a part of it)
can be exported as a structured ASCII or HTML file.

The following commands are available:

\\{org-mode-map}

\(fn)" t nil)

(defvar org-inlinetask-min-level)

(autoload 'org-global-cycle "org-mode/lisp/org" "\
Cycle the global visibility.  For details see `org-cycle'.
With \\[universal-argument] prefix arg, switch to startup visibility.
With a numeric prefix, show all headlines up to that level.

\(fn &optional ARG)" t nil)

(autoload 'orgstruct-mode "org-mode/lisp/org" "\
Toggle the minor mode `orgstruct-mode'.
This mode is for using Org-mode structure commands in other
modes.  The following keys behave as if Org-mode were active, if
the cursor is on a headline, or on a plain list item (both as
defined by Org-mode).

M-up        Move entry/item up
M-down	    Move entry/item down
M-left	    Promote
M-right	    Demote
M-S-up	    Move entry/item up
M-S-down    Move entry/item down
M-S-left    Promote subtree
M-S-right   Demote subtree
M-q	    Fill paragraph and items like in Org-mode
C-c ^	    Sort entries
C-c -	    Cycle list bullet
TAB         Cycle item visibility
M-RET       Insert new heading/item
S-M-RET     Insert new TODO heading / Checkbox item
C-c C-c     Set tags / toggle checkbox

\(fn &optional ARG)" t nil)

(autoload 'turn-on-orgstruct "org-mode/lisp/org" "\
Unconditionally turn on `orgstruct-mode'.

\(fn)" nil nil)

(autoload 'turn-on-orgstruct++ "org-mode/lisp/org" "\
Unconditionally turn on `orgstruct++-mode'.

\(fn)" nil nil)

(autoload 'org-run-like-in-org-mode "org-mode/lisp/org" "\
Run a command, pretending that the current buffer is in Org-mode.
This will temporarily bind local variables that are typically bound in
Org-mode to the values they have in Org-mode, and then interactively
call CMD.

\(fn CMD)" nil nil)

(autoload 'org-store-link "org-mode/lisp/org" "\
\\<org-mode-map>Store an org-link to the current location.
This link is added to `org-stored-links' and can later be inserted
into an org-buffer with \\[org-insert-link].

For some link types, a prefix arg is interpreted:
For links to usenet articles, arg negates `org-gnus-prefer-web-links'.
For file links, arg negates `org-context-in-file-links'.

\(fn ARG)" t nil)

(autoload 'org-insert-link-global "org-mode/lisp/org" "\
Insert a link like Org-mode does.
This command can be called in any mode to insert a link in Org-mode syntax.

\(fn)" t nil)

(autoload 'org-open-at-point-global "org-mode/lisp/org" "\
Follow a link like Org-mode does.
This command can be called in any mode to follow a link that has
Org-mode syntax.

\(fn)" t nil)

(autoload 'org-open-link-from-string "org-mode/lisp/org" "\
Open a link in the string S, as if it was in Org-mode.

\(fn S &optional ARG REFERENCE-BUFFER)" t nil)

(autoload 'org-update-all-dblocks "org-mode/lisp/org" "\
Update all dynamic blocks in the buffer.
This function can be used in a hook.

\(fn)" t nil)

(autoload 'org-map-entries "org-mode/lisp/org" "\
Call FUNC at each headline selected by MATCH in SCOPE.

FUNC is a function or a lisp form.  The function will be called without
arguments, with the cursor positioned at the beginning of the headline.
The return values of all calls to the function will be collected and
returned as a list.

The call to FUNC will be wrapped into a save-excursion form, so FUNC
does not need to preserve point.  After evaluation, the cursor will be
moved to the end of the line (presumably of the headline of the
processed entry) and search continues from there.  Under some
circumstances, this may not produce the wanted results.  For example,
if you have removed (e.g. archived) the current (sub)tree it could
mean that the next entry will be skipped entirely.  In such cases, you
can specify the position from where search should continue by making
FUNC set the variable `org-map-continue-from' to the desired buffer
position.

MATCH is a tags/property/todo match as it is used in the agenda tags view.
Only headlines that are matched by this query will be considered during
the iteration.  When MATCH is nil or t, all headlines will be
visited by the iteration.

SCOPE determines the scope of this command.  It can be any of:

nil     The current buffer, respecting the restriction if any
tree    The subtree started with the entry at point
region  The entries within the active region, if any
region-start-level
        The entries within the active region, but only those at
        the same level than the first one.
file    The current buffer, without restriction
file-with-archives
        The current buffer, and any archives associated with it
agenda  All agenda files
agenda-with-archives
        All agenda files with any archive files associated with them
\(file1 file2 ...)
        If this is a list, all files in the list will be scanned

The remaining args are treated as settings for the skipping facilities of
the scanner.  The following items can be given here:

  archive    skip trees with the archive tag.
  comment    skip trees with the COMMENT keyword
  function or Emacs Lisp form:
             will be used as value for `org-agenda-skip-function', so whenever
             the function returns t, FUNC will not be called for that
             entry and search will continue from the point where the
             function leaves it.

If your function needs to retrieve the tags including inherited tags
at the *current* entry, you can use the value of the variable
`org-scanner-tags' which will be much faster than getting the value
with `org-get-tags-at'.  If your function gets properties with
`org-entry-properties' at the *current* entry, bind `org-trust-scanner-tags'
to t around the call to `org-entry-properties' to get the same speedup.
Note that if your function moves around to retrieve tags and properties at
a *different* entry, you cannot use these techniques.

\(fn FUNC &optional MATCH SCOPE &rest SKIP)" nil nil)

(autoload 'org-switchb "org-mode/lisp/org" "\
Switch between Org buffers.
With one prefix argument, restrict available buffers to files.
With two prefix arguments, restrict available buffers to agenda files.

Defaults to `iswitchb' for buffer name completion.
Set `org-completion-use-ido' to make it use ido instead.

\(fn &optional ARG)" t nil)

(defalias 'org-ido-switchb 'org-switchb)

(defalias 'org-iswitchb 'org-switchb)

(autoload 'org-cycle-agenda-files "org-mode/lisp/org" "\
Cycle through the files in `org-agenda-files'.
If the current buffer visits an agenda file, find the next one in the list.
If the current buffer does not, find the first agenda file.

\(fn)" t nil)

(autoload 'org-submit-bug-report "org-mode/lisp/org" "\
Submit a bug report on Org-mode via mail.

Don't hesitate to report any problems or inaccurate documentation.

If you don't have setup sending mail from (X)Emacs, please copy the
output buffer into your mail program, as it gives us important
information about your Org-mode version and configuration.

\(fn)" t nil)

(autoload 'org-require-autoloaded-modules "org-mode/lisp/org" "\


\(fn)" t nil)

(autoload 'org-reload "org-mode/lisp/org" "\
Reload all org lisp files.
With prefix arg UNCOMPILED, load the uncompiled versions.

\(fn &optional UNCOMPILED)" t nil)

(autoload 'org-customize "org-mode/lisp/org" "\
Call the customize function with org as argument.

\(fn)" t nil)

(autoload 'org-forward-element "org-mode/lisp/org" "\
Move forward by one element.
Move to the next element at the same level, when possible.

\(fn)" t nil)

(autoload 'org-backward-element "org-mode/lisp/org" "\
Move backward by one element.
Move to the previous element at the same level, when possible.

\(fn)" t nil)

(autoload 'org-up-element "org-mode/lisp/org" "\
Move to upper element.

\(fn)" t nil)

(defvar org-element-greater-elements)

(autoload 'org-drag-element-backward "org-mode/lisp/org" "\
Move backward element at point.

\(fn)" t nil)

(autoload 'org-drag-element-forward "org-mode/lisp/org" "\
Move forward element at point.

\(fn)" t nil)

(autoload 'org-mark-element "org-mode/lisp/org" "\
Put point at beginning of this element, mark at end.

Interactively, if this command is repeated or (in Transient Mark
mode) if the mark is active, it marks the next element after the
ones already marked.

\(fn)" t nil)

(autoload 'org-narrow-to-element "org-mode/lisp/org" "\
Narrow buffer to current element.

\(fn)" t nil)

(autoload 'org-transpose-element "org-mode/lisp/org" "\
Transpose current and previous elements, keeping blank lines between.
Point is moved after both elements.

\(fn)" t nil)

(autoload 'org-unindent-buffer "org-mode/lisp/org" "\
Un-indent the visible part of the buffer.
Relative indentation (between items, inside blocks, etc.) isn't
modified.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-agenda-to-appt org-calendar-goto-agenda org-agenda-check-for-timestamp-as-reason-to-ignore-todo-item
;;;;;;  org-diary org-agenda-list-stuck-projects org-tags-view org-todo-list
;;;;;;  org-search-view org-agenda-list org-batch-store-agenda-views
;;;;;;  org-store-agenda-views org-batch-agenda-csv org-batch-agenda
;;;;;;  org-agenda org-toggle-sticky-agenda) "org-mode/lisp/org-agenda"
;;;;;;  "org-mode/lisp/org-agenda.el" (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-agenda.el

(autoload 'org-toggle-sticky-agenda "org-mode/lisp/org-agenda" "\
Toggle `org-agenda-sticky'.

\(fn &optional ARG)" t nil)

(autoload 'org-agenda "org-mode/lisp/org-agenda" "\
Dispatch agenda commands to collect entries to the agenda buffer.
Prompts for a command to execute.  Any prefix arg will be passed
on to the selected command.  The default selections are:

a     Call `org-agenda-list' to display the agenda for current day or week.
t     Call `org-todo-list' to display the global todo list.
T     Call `org-todo-list' to display the global todo list, select only
      entries with a specific TODO keyword (the user gets a prompt).
m     Call `org-tags-view' to display headlines with tags matching
      a condition  (the user is prompted for the condition).
M     Like `m', but select only TODO entries, no ordinary headlines.
L     Create a timeline for the current buffer.
e     Export views to associated files.
s     Search entries for keywords.
S     Search entries for keywords, only with TODO keywords.
/     Multi occur across all agenda files and also files listed
      in `org-agenda-text-search-extra-files'.
<     Restrict agenda commands to buffer, subtree, or region.
      Press several times to get the desired effect.
>     Remove a previous restriction.
#     List \"stuck\" projects.
!     Configure what \"stuck\" means.
C     Configure custom agenda commands.

More commands can be added by configuring the variable
`org-agenda-custom-commands'.  In particular, specific tags and TODO keyword
searches can be pre-defined in this way.

If the current buffer is in Org-mode and visiting a file, you can also
first press `<' once to indicate that the agenda should be temporarily
\(until the next use of \\[org-agenda]) restricted to the current file.
Pressing `<' twice means to restrict to the current subtree or region
\(if active).

\(fn &optional ARG ORG-KEYS RESTRICTION)" t nil)

(autoload 'org-batch-agenda "org-mode/lisp/org-agenda" "\
Run an agenda command in batch mode and send the result to STDOUT.
If CMD-KEY is a string of length 1, it is used as a key in
`org-agenda-custom-commands' and triggers this command.  If it is a
longer string it is used as a tags/todo match string.
Parameters are alternating variable names and values that will be bound
before running the agenda command.

\(fn CMD-KEY &rest PARAMETERS)" nil (quote macro))

(autoload 'org-batch-agenda-csv "org-mode/lisp/org-agenda" "\
Run an agenda command in batch mode and send the result to STDOUT.
If CMD-KEY is a string of length 1, it is used as a key in
`org-agenda-custom-commands' and triggers this command.  If it is a
longer string it is used as a tags/todo match string.
Parameters are alternating variable names and values that will be bound
before running the agenda command.

The output gives a line for each selected agenda item.  Each
item is a list of comma-separated values, like this:

category,head,type,todo,tags,date,time,extra,priority-l,priority-n

category     The category of the item
head         The headline, without TODO kwd, TAGS and PRIORITY
type         The type of the agenda entry, can be
                todo               selected in TODO match
                tagsmatch          selected in tags match
                diary              imported from diary
                deadline           a deadline on given date
                scheduled          scheduled on given date
                timestamp          entry has timestamp on given date
                closed             entry was closed on given date
                upcoming-deadline  warning about deadline
                past-scheduled     forwarded scheduled item
                block              entry has date block including g. date
todo         The todo keyword, if any
tags         All tags including inherited ones, separated by colons
date         The relevant date, like 2007-2-14
time         The time, like 15:00-16:50
extra        Sting with extra planning info
priority-l   The priority letter if any was given
priority-n   The computed numerical priority
agenda-day   The day in the agenda where this is listed

\(fn CMD-KEY &rest PARAMETERS)" nil (quote macro))

(autoload 'org-store-agenda-views "org-mode/lisp/org-agenda" "\


\(fn &rest PARAMETERS)" t nil)

(autoload 'org-batch-store-agenda-views "org-mode/lisp/org-agenda" "\
Run all custom agenda commands that have a file argument.

\(fn &rest PARAMETERS)" nil (quote macro))

(autoload 'org-agenda-list "org-mode/lisp/org-agenda" "\
Produce a daily/weekly view from all files in variable `org-agenda-files'.
The view will be for the current day or week, but from the overview buffer
you will be able to go to other days/weeks.

With a numeric prefix argument in an interactive call, the agenda will
span ARG days.  Lisp programs should instead specify SPAN to change
the number of days.  SPAN defaults to `org-agenda-span'.

START-DAY defaults to TODAY, or to the most recent match for the weekday
given in `org-agenda-start-on-weekday'.

\(fn &optional ARG START-DAY SPAN)" t nil)

(autoload 'org-search-view "org-mode/lisp/org-agenda" "\
Show all entries that contain a phrase or words or regular expressions.

With optional prefix argument TODO-ONLY, only consider entries that are
TODO entries.  The argument STRING can be used to pass a default search
string into this function.  If EDIT-AT is non-nil, it means that the
user should get a chance to edit this string, with cursor at position
EDIT-AT.

The search string can be viewed either as a phrase that should be found as
is, or it can be broken into a number of snippets, each of which must match
in a Boolean way to select an entry.  The default depends on the variable
`org-agenda-search-view-always-boolean'.
Even if this is turned off (the default) you can always switch to
Boolean search dynamically by preceding the first word with  \"+\" or \"-\".

The default is a direct search of the whole phrase, where each space in
the search string can expand to an arbitrary amount of whitespace,
including newlines.

If using a Boolean search, the search string is split on whitespace and
each snippet is searched separately, with logical AND to select an entry.
Words prefixed with a minus must *not* occur in the entry.  Words without
a prefix or prefixed with a plus must occur in the entry.  Matching is
case-insensitive.  Words are enclosed by word delimiters (i.e. they must
match whole words, not parts of a word) if
`org-agenda-search-view-force-full-words' is set (default is nil).

Boolean search snippets enclosed by curly braces are interpreted as
regular expressions that must or (when preceded with \"-\") must not
match in the entry.  Snippets enclosed into double quotes will be taken
as a whole, to include whitespace.

- If the search string starts with an asterisk, search only in headlines.
- If (possibly after the leading star) the search string starts with an
  exclamation mark, this also means to look at TODO entries only, an effect
  that can also be achieved with a prefix argument.
- If (possibly after star and exclamation mark) the search string starts
  with a colon, this will mean that the (non-regexp) snippets of the
  Boolean search must match as full words.

This command searches the agenda files, and in addition the files listed
in `org-agenda-text-search-extra-files'.

\(fn &optional TODO-ONLY STRING EDIT-AT)" t nil)

(autoload 'org-todo-list "org-mode/lisp/org-agenda" "\
Show all (not done) TODO entries from all agenda file in a single list.
The prefix arg can be used to select a specific TODO keyword and limit
the list to these.  When using \\[universal-argument], you will be prompted
for a keyword.  A numeric prefix directly selects the Nth keyword in
`org-todo-keywords-1'.

\(fn &optional ARG)" t nil)

(autoload 'org-tags-view "org-mode/lisp/org-agenda" "\
Show all headlines for all `org-agenda-files' matching a TAGS criterion.
The prefix arg TODO-ONLY limits the search to TODO entries.

\(fn &optional TODO-ONLY MATCH)" t nil)

(autoload 'org-agenda-list-stuck-projects "org-mode/lisp/org-agenda" "\
Create agenda view for projects that are stuck.
Stuck projects are project that have no next actions.  For the definitions
of what a project is and how to check if it stuck, customize the variable
`org-stuck-projects'.

\(fn &rest IGNORE)" t nil)

(autoload 'org-diary "org-mode/lisp/org-agenda" "\
Return diary information from org files.
This function can be used in a \"sexp\" diary entry in the Emacs calendar.
It accesses org files and extracts information from those files to be
listed in the diary.  The function accepts arguments specifying what
items should be listed.  For a list of arguments allowed here, see the
variable `org-agenda-entry-types'.

The call in the diary file should look like this:

   &%%(org-diary) ~/path/to/some/orgfile.org

Use a separate line for each org file to check.  Or, if you omit the file name,
all files listed in `org-agenda-files' will be checked automatically:

   &%%(org-diary)

If you don't give any arguments (as in the example above), the default
arguments (:deadline :scheduled :timestamp :sexp) are used.
So the example above may also be written as

   &%%(org-diary :deadline :timestamp :sexp :scheduled)

The function expects the lisp variables `entry' and `date' to be provided
by the caller, because this is how the calendar works.  Don't use this
function from a program - use `org-agenda-get-day-entries' instead.

\(fn &rest ARGS)" nil nil)

(autoload 'org-agenda-check-for-timestamp-as-reason-to-ignore-todo-item "org-mode/lisp/org-agenda" "\
Do we have a reason to ignore this TODO entry because it has a time stamp?

\(fn &optional END)" nil nil)

(autoload 'org-calendar-goto-agenda "org-mode/lisp/org-agenda" "\
Compute the Org-mode agenda for the calendar date displayed at the cursor.
This is a command that has to be installed in `calendar-mode-map'.

\(fn)" t nil)

(autoload 'org-agenda-to-appt "org-mode/lisp/org-agenda" "\
Activate appointments found in `org-agenda-files'.
With a \\[universal-argument] prefix, refresh the list of
appointments.

If FILTER is t, interactively prompt the user for a regular
expression, and filter out entries that don't match it.

If FILTER is a string, use this string as a regular expression
for filtering entries out.

If FILTER is a function, filter out entries against which
calling the function returns nil.  This function takes one
argument: an entry from `org-agenda-get-day-entries'.

FILTER can also be an alist with the car of each cell being
either 'headline or 'category.  For example:

  '((headline \"IMPORTANT\")
    (category \"Work\"))

will only add headlines containing IMPORTANT or headlines
belonging to the \"Work\" category.

ARGS are symbols indicating what kind of entries to consider.
By default `org-agenda-to-appt' will use :deadline, :scheduled
and :timestamp entries.  See the docstring of `org-diary' for
details and examples.

If an entry as a APPT_WARNTIME property, its value will be used
to override `appt-message-warning-time'.

\(fn &optional REFRESH FILTER &rest ARGS)" t nil)

;;;***

;;;### (autoloads (org-archive-subtree-default-with-confirmation
;;;;;;  org-archive-subtree-default) "org-mode/lisp/org-archive"
;;;;;;  "org-mode/lisp/org-archive.el" (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-archive.el

(autoload 'org-archive-subtree-default "org-mode/lisp/org-archive" "\
Archive the current subtree with the default command.
This command is set with the variable `org-archive-default-command'.

\(fn)" t nil)

(autoload 'org-archive-subtree-default-with-confirmation "org-mode/lisp/org-archive" "\
Archive the current subtree with the default command.
This command is set with the variable `org-archive-default-command'.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-export-as-ascii org-export-region-as-ascii
;;;;;;  org-replace-region-by-ascii org-export-as-ascii-to-buffer
;;;;;;  org-export-as-utf8-to-buffer org-export-as-utf8 org-export-as-latin1-to-buffer
;;;;;;  org-export-as-latin1) "org-mode/lisp/org-ascii" "org-mode/lisp/org-ascii.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-ascii.el

(autoload 'org-export-as-latin1 "org-mode/lisp/org-ascii" "\
Like `org-export-as-ascii', use latin1 encoding for special symbols.

\(fn &rest ARGS)" t nil)

(autoload 'org-export-as-latin1-to-buffer "org-mode/lisp/org-ascii" "\
Like `org-export-as-ascii-to-buffer', use latin1 encoding for symbols.

\(fn &rest ARGS)" t nil)

(autoload 'org-export-as-utf8 "org-mode/lisp/org-ascii" "\
Like `org-export-as-ascii', use encoding for special symbols.

\(fn &rest ARGS)" t nil)

(autoload 'org-export-as-utf8-to-buffer "org-mode/lisp/org-ascii" "\
Like `org-export-as-ascii-to-buffer', use utf8 encoding for symbols.

\(fn &rest ARGS)" t nil)

(autoload 'org-export-as-ascii-to-buffer "org-mode/lisp/org-ascii" "\
Call `org-export-as-ascii` with output to a temporary buffer.
No file is created.  The prefix ARG is passed through to `org-export-as-ascii'.

\(fn ARG)" t nil)

(autoload 'org-replace-region-by-ascii "org-mode/lisp/org-ascii" "\
Assume the current region has org-mode syntax, and convert it to plain ASCII.
This can be used in any buffer.  For example, you could write an
itemized list in org-mode syntax in a Mail buffer and then use this
command to convert it.

\(fn BEG END)" t nil)

(autoload 'org-export-region-as-ascii "org-mode/lisp/org-ascii" "\
Convert region from BEG to END in org-mode buffer to plain ASCII.
If prefix arg BODY-ONLY is set, omit file header, footer, and table of
contents, and only produce the region of converted text, useful for
cut-and-paste operations.
If BUFFER is a buffer or a string, use/create that buffer as a target
of the converted ASCII.  If BUFFER is the symbol `string', return the
produced ASCII as a string and leave not buffer behind.  For example,
a Lisp program could call this function in the following way:

  (setq ascii (org-export-region-as-ascii beg end t 'string))

When called interactively, the output buffer is selected, and shown
in a window.  A non-interactive call will only return the buffer.

\(fn BEG END &optional BODY-ONLY BUFFER)" t nil)

(autoload 'org-export-as-ascii "org-mode/lisp/org-ascii" "\
Export the outline as a pretty ASCII file.
If there is an active region, export only the region.
The prefix ARG specifies how many levels of the outline should become
underlined headlines, default is 3.    Lower levels will become bulleted
lists.  When HIDDEN is non-nil, don't display the ASCII buffer.
EXT-PLIST is a property list with external parameters overriding
org-mode's default settings, but still inferior to file-local
settings.  When TO-BUFFER is non-nil, create a buffer with that
name and export to that buffer.  If TO-BUFFER is the symbol
`string', don't leave any buffer behind but just return the
resulting ASCII as a string.  When BODY-ONLY is set, don't produce
the file header and footer.  When PUB-DIR is set, use this as the
publishing directory.

\(fn ARG &optional HIDDEN EXT-PLIST TO-BUFFER BODY-ONLY PUB-DIR)" t nil)

;;;***

;;;### (autoloads (org-attach) "org-mode/lisp/org-attach" "org-mode/lisp/org-attach.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-attach.el

(autoload 'org-attach "org-mode/lisp/org-attach" "\
The dispatcher for attachment commands.
Shows a list of commands and prompts for another key to execute a command.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-bbdb-anniversaries) "org-mode/lisp/org-bbdb"
;;;;;;  "org-mode/lisp/org-bbdb.el" (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-bbdb.el

(autoload 'org-bbdb-anniversaries "org-mode/lisp/org-bbdb" "\
Extract anniversaries from BBDB for display in the agenda.

\(fn)" nil nil)

;;;***

;;;### (autoloads (org-capture-import-remember-templates org-capture-insert-template-here
;;;;;;  org-capture) "org-mode/lisp/org-capture" "org-mode/lisp/org-capture.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-capture.el

(defvar org-capture-initial nil)

(autoload 'org-capture "org-mode/lisp/org-capture" "\
Capture something.
\\<org-capture-mode-map>
This will let you select a template from `org-capture-templates', and then
file the newly captured information.  The text is immediately inserted
at the target location, and an indirect buffer is shown where you can
edit it.  Pressing \\[org-capture-finalize] brings you back to the previous state
of Emacs, so that you can continue your work.

When called interactively with a \\[universal-argument] prefix argument GOTO, don't capture
anything, just go to the file/headline where the selected template
stores its notes.  With a double prefix argument \\[universal-argument] \\[universal-argument], go to the last note
stored.

When called with a `C-0' (zero) prefix, insert a template at point.

Lisp programs can set KEYS to a string associated with a template in
`org-capture-templates'.  In this case, interactive selection will be
bypassed.

\(fn &optional GOTO KEYS)" t nil)

(autoload 'org-capture-insert-template-here "org-mode/lisp/org-capture" "\


\(fn)" nil nil)

(autoload 'org-capture-import-remember-templates "org-mode/lisp/org-capture" "\
Set org-capture-templates to be similar to `org-remember-templates'.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-clock-persistence-insinuate org-get-clocktable
;;;;;;  org-clock-in-last) "org-mode/lisp/org-clock" "org-mode/lisp/org-clock.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-clock.el

(autoload 'org-clock-in-last "org-mode/lisp/org-clock" "\
Clock in the last closed clocked item.
When already clocking in, send an warning.
With a universal prefix argument, select the task you want to
clock in from the last clocked in tasks.
With two universal prefix arguments, start clocking using the
last clock-out time, if any.
With three universal prefix arguments, interactively prompt
for a todo state to switch to, overriding the existing value
`org-clock-in-switch-to-state'.

\(fn &optional ARG)" t nil)

(autoload 'org-get-clocktable "org-mode/lisp/org-clock" "\
Get a formatted clocktable with parameters according to PROPS.
The table is created in a temporary buffer, fully formatted and
fontified, and then returned.

\(fn &rest PROPS)" nil nil)

(autoload 'org-clock-persistence-insinuate "org-mode/lisp/org-clock" "\
Set up hooks for clock persistence.

\(fn)" nil nil)

;;;***

;;;### (autoloads (org-check-version) "org-mode/lisp/org-compat"
;;;;;;  "org-mode/lisp/org-compat.el" (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-compat.el

(autoload 'org-check-version "org-mode/lisp/org-compat" "\
Try very hard to provide sensible version strings.

\(fn)" nil (quote macro))

;;;***

;;;### (autoloads (org-datetree-find-date-create) "org-mode/lisp/org-datetree"
;;;;;;  "org-mode/lisp/org-datetree.el" (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-datetree.el

(autoload 'org-datetree-find-date-create "org-mode/lisp/org-datetree" "\
Find or create an entry for DATE.
If KEEP-RESTRICTION is non-nil, do not widen the buffer.
When it is nil, the buffer will be widened to make sure an existing date
tree can be found.

\(fn DATE &optional KEEP-RESTRICTION)" nil nil)

;;;***

;;;### (autoloads (org-export-as-docbook org-export-as-docbook-pdf-and-open
;;;;;;  org-export-as-docbook-pdf org-export-region-as-docbook org-replace-region-by-docbook
;;;;;;  org-export-as-docbook-to-buffer org-export-as-docbook-batch)
;;;;;;  "org-mode/lisp/org-docbook" "org-mode/lisp/org-docbook.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-docbook.el

(autoload 'org-export-as-docbook-batch "org-mode/lisp/org-docbook" "\
Call `org-export-as-docbook' in batch style.
This function can be used in batch processing.

For example:

$ emacs --batch
        --load=$HOME/lib/emacs/org.el
        --visit=MyOrgFile.org --funcall org-export-as-docbook-batch

\(fn)" nil nil)

(autoload 'org-export-as-docbook-to-buffer "org-mode/lisp/org-docbook" "\
Call `org-export-as-docbook' with output to a temporary buffer.
No file is created.

\(fn)" t nil)

(autoload 'org-replace-region-by-docbook "org-mode/lisp/org-docbook" "\
Replace the region from BEG to END with its DocBook export.
It assumes the region has `org-mode' syntax, and then convert it to
DocBook.  This can be used in any buffer.  For example, you could
write an itemized list in `org-mode' syntax in an DocBook buffer and
then use this command to convert it.

\(fn BEG END)" t nil)

(autoload 'org-export-region-as-docbook "org-mode/lisp/org-docbook" "\
Convert region from BEG to END in `org-mode' buffer to DocBook.
If prefix arg BODY-ONLY is set, omit file header and footer and
only produce the region of converted text, useful for
cut-and-paste operations.  If BUFFER is a buffer or a string,
use/create that buffer as a target of the converted DocBook.  If
BUFFER is the symbol `string', return the produced DocBook as a
string and leave not buffer behind.  For example, a Lisp program
could call this function in the following way:

  (setq docbook (org-export-region-as-docbook beg end t 'string))

When called interactively, the output buffer is selected, and shown
in a window.  A non-interactive call will only return the buffer.

\(fn BEG END &optional BODY-ONLY BUFFER)" t nil)

(autoload 'org-export-as-docbook-pdf "org-mode/lisp/org-docbook" "\
Export as DocBook XML file, and generate PDF file.

\(fn &optional HIDDEN EXT-PLIST TO-BUFFER BODY-ONLY PUB-DIR)" t nil)

(autoload 'org-export-as-docbook-pdf-and-open "org-mode/lisp/org-docbook" "\
Export as DocBook XML file, generate PDF file, and open it.

\(fn)" t nil)

(autoload 'org-export-as-docbook "org-mode/lisp/org-docbook" "\
Export the current buffer as a DocBook file.
If there is an active region, export only the region.  When
HIDDEN is obsolete and does nothing.  EXT-PLIST is a
property list with external parameters overriding org-mode's
default settings, but still inferior to file-local settings.
When TO-BUFFER is non-nil, create a buffer with that name and
export to that buffer.  If TO-BUFFER is the symbol `string',
don't leave any buffer behind but just return the resulting HTML
as a string.  When BODY-ONLY is set, don't produce the file
header and footer, simply return the content of the document (all
top-level sections).  When PUB-DIR is set, use this as the
publishing directory.

\(fn &optional HIDDEN EXT-PLIST TO-BUFFER BODY-ONLY PUB-DIR)" t nil)

;;;***

;;;### (autoloads (org-element-context org-element-at-point org-element-interpret-data)
;;;;;;  "org-mode/lisp/org-element" "org-mode/lisp/org-element.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-element.el

(autoload 'org-element-interpret-data "org-mode/lisp/org-element" "\
Interpret DATA as Org syntax.

DATA is a parse tree, an element, an object or a secondary string
to interpret.

Optional argument PARENT is used for recursive calls.  It contains
the element or object containing data, or nil.

Return Org syntax as a string.

\(fn DATA &optional PARENT)" nil nil)

(autoload 'org-element-at-point "org-mode/lisp/org-element" "\
Determine closest element around point.

Return value is a list like (TYPE PROPS) where TYPE is the type
of the element and PROPS a plist of properties associated to the
element.

Possible types are defined in `org-element-all-elements'.
Properties depend on element or object type, but always
include :begin, :end, :parent and :post-blank properties.

As a special case, if point is at the very beginning of a list or
sub-list, returned element will be that list instead of the first
item.  In the same way, if point is at the beginning of the first
row of a table, returned element will be the table instead of the
first row.

If optional argument KEEP-TRAIL is non-nil, the function returns
a list of of elements leading to element at point.  The list's
CAR is always the element at point.  Following positions contain
element's siblings, then parents, siblings of parents, until the
first element of current section.

\(fn &optional KEEP-TRAIL)" nil nil)

(autoload 'org-element-context "org-mode/lisp/org-element" "\
Return closest element or object around point.

Return value is a list like (TYPE PROPS) where TYPE is the type
of the element or object and PROPS a plist of properties
associated to it.

Possible types are defined in `org-element-all-elements' and
`org-element-all-objects'.  Properties depend on element or
object type, but always include :begin, :end, :parent
and :post-blank properties.

\(fn)" nil nil)

;;;***

;;;### (autoloads (org-insert-export-options-template org-export-as-org
;;;;;;  org-export-visible org-export) "org-mode/lisp/org-exp" "org-mode/lisp/org-exp.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-exp.el

(autoload 'org-export "org-mode/lisp/org-exp" "\
Export dispatcher for Org-mode.
When `org-export-run-in-background' is non-nil, try to run the command
in the background.  This will be done only for commands that write
to a file.  For details see the docstring of `org-export-run-in-background'.

The prefix argument ARG will be passed to the exporter.  However, if
ARG is a double universal prefix \\[universal-argument] \\[universal-argument], that means to inverse the
value of `org-export-run-in-background'.

If `org-export-initial-scope' is set to 'subtree, try to export
the current subtree, otherwise try to export the whole buffer.
Pressing `1' will switch between these two options.

\(fn &optional ARG)" t nil)

(autoload 'org-export-visible "org-mode/lisp/org-exp" "\
Create a copy of the visible part of the current buffer, and export it.
The copy is created in a temporary buffer and removed after use.
TYPE is the final key (as a string) that also selects the export command in
the \\<org-mode-map>\\[org-export] export dispatcher.
As a special case, if the you type SPC at the prompt, the temporary
org-mode file will not be removed but presented to you so that you can
continue to use it.  The prefix arg ARG is passed through to the exporting
command.

\(fn TYPE ARG)" t nil)

(autoload 'org-export-as-org "org-mode/lisp/org-exp" "\
Make a copy with not-exporting stuff removed.
The purpose of this function is to provide a way to export the source
Org file of a webpage in Org format, but with sensitive and/or irrelevant
stuff removed.  This command will remove the following:

- archived trees (if the variable `org-export-with-archived-trees' is nil)
- comment blocks and trees starting with the COMMENT keyword
- only trees that are consistent with `org-export-select-tags'
  and `org-export-exclude-tags'.

The only arguments that will be used are EXT-PLIST and PUB-DIR,
all the others will be ignored (but are present so that the general
mechanism to call publishing functions will work).

EXT-PLIST is a property list with external parameters overriding
org-mode's default settings, but still inferior to file-local
settings.  When PUB-DIR is set, use this as the publishing
directory.

\(fn ARG &optional HIDDEN EXT-PLIST TO-BUFFER BODY-ONLY PUB-DIR)" t nil)

(autoload 'org-insert-export-options-template "org-mode/lisp/org-exp" "\
Insert into the buffer a template with information for exporting.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-feed-show-raw-feed org-feed-goto-inbox org-feed-update
;;;;;;  org-feed-update-all) "org-mode/lisp/org-feed" "org-mode/lisp/org-feed.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-feed.el

(autoload 'org-feed-update-all "org-mode/lisp/org-feed" "\
Get inbox items from all feeds in `org-feed-alist'.

\(fn)" t nil)

(autoload 'org-feed-update "org-mode/lisp/org-feed" "\
Get inbox items from FEED.
FEED can be a string with an association in `org-feed-alist', or
it can be a list structured like an entry in `org-feed-alist'.

\(fn FEED &optional RETRIEVE-ONLY)" t nil)

(autoload 'org-feed-goto-inbox "org-mode/lisp/org-feed" "\
Go to the inbox that captures the feed named FEED.

\(fn FEED)" t nil)

(autoload 'org-feed-show-raw-feed "org-mode/lisp/org-feed" "\
Show the raw feed buffer of a feed.

\(fn FEED)" t nil)

;;;***

;;;### (autoloads (org-footnote-normalize org-footnote-action) "org-mode/lisp/org-footnote"
;;;;;;  "org-mode/lisp/org-footnote.el" (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-footnote.el

(autoload 'org-footnote-action "org-mode/lisp/org-footnote" "\
Do the right thing for footnotes.

When at a footnote reference, jump to the definition.

When at a definition, jump to the references if they exist, offer
to create them otherwise.

When neither at definition or reference, create a new footnote,
interactively.

With prefix arg SPECIAL, offer additional commands in a menu.

\(fn &optional SPECIAL)" t nil)

(autoload 'org-footnote-normalize "org-mode/lisp/org-footnote" "\
Collect the footnotes in various formats and normalize them.

This finds the different sorts of footnotes allowed in Org, and
normalizes them to the usual [N] format that is understood by the
Org-mode exporters.

When SORT-ONLY is set, only sort the footnote definitions into the
referenced sequence.

If Org is amidst an export process, EXPORT-PROPS will hold the
export properties of the buffer.

When EXPORT-PROPS is non-nil, the default action is to insert
normalized footnotes towards the end of the pre-processing
buffer.  Some exporters (docbook, odt...) expect footnote
definitions to be available before any references to them.  Such
exporters can let bind `org-footnote-insert-pos-for-preprocessor'
to symbol `point-min' to achieve the desired behaviour.

Additional note on `org-footnote-insert-pos-for-preprocessor':
1. This variable has not effect when FOR-PREPROCESSOR is nil.
2. This variable (potentially) obviates the need for extra scan
   of pre-processor buffer as witnessed in
   `org-export-docbook-get-footnotes'.

\(fn &optional SORT-ONLY EXPORT-PROPS)" nil nil)

;;;***

;;;### (autoloads (org-freemind-to-org-mode org-freemind-from-org-sparse-tree
;;;;;;  org-freemind-from-org-mode org-freemind-from-org-mode-node
;;;;;;  org-freemind-show org-export-as-freemind) "org-mode/lisp/org-freemind"
;;;;;;  "org-mode/lisp/org-freemind.el" (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-freemind.el

(autoload 'org-export-as-freemind "org-mode/lisp/org-freemind" "\
Export the current buffer as a Freemind file.
If there is an active region, export only the region.  HIDDEN is
obsolete and does nothing.  EXT-PLIST is a property list with
external parameters overriding org-mode's default settings, but
still inferior to file-local settings.  When TO-BUFFER is
non-nil, create a buffer with that name and export to that
buffer.  If TO-BUFFER is the symbol `string', don't leave any
buffer behind but just return the resulting HTML as a string.
When BODY-ONLY is set, don't produce the file header and footer,
simply return the content of the document (all top level
sections).  When PUB-DIR is set, use this as the publishing
directory.

See `org-freemind-from-org-mode' for more information.

\(fn &optional HIDDEN EXT-PLIST TO-BUFFER BODY-ONLY PUB-DIR)" t nil)

(autoload 'org-freemind-show "org-mode/lisp/org-freemind" "\
Show file MM-FILE in Freemind.

\(fn MM-FILE)" t nil)

(autoload 'org-freemind-from-org-mode-node "org-mode/lisp/org-freemind" "\
Convert node at line NODE-LINE to the FreeMind file MM-FILE.
See `org-freemind-from-org-mode' for more information.

\(fn NODE-LINE MM-FILE)" t nil)

(autoload 'org-freemind-from-org-mode "org-mode/lisp/org-freemind" "\
Convert the `org-mode' file ORG-FILE to the FreeMind file MM-FILE.
All the nodes will be opened or closed in Freemind just as you
have them in `org-mode'.

Note that exporting to Freemind also gives you an alternative way
to export from `org-mode' to html.  You can create a dynamic html
version of the your org file, by first exporting to Freemind and
then exporting from Freemind to html.  The 'As
XHTML (JavaScript)' version in Freemind works very well (and you
can use a CSS stylesheet to style it).

\(fn ORG-FILE MM-FILE)" t nil)

(autoload 'org-freemind-from-org-sparse-tree "org-mode/lisp/org-freemind" "\
Convert visible part of buffer ORG-BUFFER to FreeMind file MM-FILE.

\(fn ORG-BUFFER MM-FILE)" t nil)

(autoload 'org-freemind-to-org-mode "org-mode/lisp/org-freemind" "\
Convert FreeMind file MM-FILE to `org-mode' file ORG-FILE.

\(fn MM-FILE ORG-FILE)" t nil)

;;;***

;;;### (autoloads (org-export-htmlize-generate-css org-export-as-html
;;;;;;  org-export-region-as-html org-replace-region-by-html org-export-as-html-to-buffer
;;;;;;  org-export-as-html-batch org-export-as-html-and-open) "org-mode/lisp/org-html"
;;;;;;  "org-mode/lisp/org-html.el" (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-html.el

(put 'org-export-html-style-include-default 'safe-local-variable 'booleanp)

(put 'org-export-html-style 'safe-local-variable 'stringp)

(put 'org-export-html-style-extra 'safe-local-variable 'stringp)

(autoload 'org-export-as-html-and-open "org-mode/lisp/org-html" "\
Export the outline as HTML and immediately open it with a browser.
If there is an active region, export only the region.
The prefix ARG specifies how many levels of the outline should become
headlines.  The default is 3.  Lower levels will become bulleted lists.

\(fn ARG)" t nil)

(autoload 'org-export-as-html-batch "org-mode/lisp/org-html" "\
Call the function `org-export-as-html'.
This function can be used in batch processing as:
emacs   --batch
        --load=$HOME/lib/emacs/org.el
        --eval \"(setq org-export-headline-levels 2)\"
        --visit=MyFile --funcall org-export-as-html-batch

\(fn)" nil nil)

(autoload 'org-export-as-html-to-buffer "org-mode/lisp/org-html" "\
Call `org-export-as-html` with output to a temporary buffer.
No file is created.  The prefix ARG is passed through to `org-export-as-html'.

\(fn ARG)" t nil)

(autoload 'org-replace-region-by-html "org-mode/lisp/org-html" "\
Assume the current region has org-mode syntax, and convert it to HTML.
This can be used in any buffer.  For example, you could write an
itemized list in org-mode syntax in an HTML buffer and then use this
command to convert it.

\(fn BEG END)" t nil)

(autoload 'org-export-region-as-html "org-mode/lisp/org-html" "\
Convert region from BEG to END in org-mode buffer to HTML.
If prefix arg BODY-ONLY is set, omit file header, footer, and table of
contents, and only produce the region of converted text, useful for
cut-and-paste operations.
If BUFFER is a buffer or a string, use/create that buffer as a target
of the converted HTML.  If BUFFER is the symbol `string', return the
produced HTML as a string and leave not buffer behind.  For example,
a Lisp program could call this function in the following way:

  (setq html (org-export-region-as-html beg end t 'string))

When called interactively, the output buffer is selected, and shown
in a window.  A non-interactive call will only return the buffer.

\(fn BEG END &optional BODY-ONLY BUFFER)" t nil)

(autoload 'org-export-as-html "org-mode/lisp/org-html" "\
Export the outline as a pretty HTML file.
If there is an active region, export only the region.  The prefix
ARG specifies how many levels of the outline should become
headlines.  The default is 3.  Lower levels will become bulleted
lists.  HIDDEN is obsolete and does nothing.
EXT-PLIST is a property list with external parameters overriding
org-mode's default settings, but still inferior to file-local
settings.  When TO-BUFFER is non-nil, create a buffer with that
name and export to that buffer.  If TO-BUFFER is the symbol
`string', don't leave any buffer behind but just return the
resulting HTML as a string.  When BODY-ONLY is set, don't produce
the file header and footer, simply return the content of
<body>...</body>, without even the body tags themselves.  When
PUB-DIR is set, use this as the publishing directory.

\(fn ARG &optional HIDDEN EXT-PLIST TO-BUFFER BODY-ONLY PUB-DIR)" t nil)

(autoload 'org-export-htmlize-generate-css "org-mode/lisp/org-html" "\
Create the CSS for all font definitions in the current Emacs session.
Use this to create face definitions in your CSS style file that can then
be used by code snippets transformed by htmlize.
This command just produces a buffer that contains class definitions for all
faces used in the current Emacs session.  You can copy and paste the ones you
need into your CSS file.

If you then set `org-export-htmlize-output-type' to `css', calls to
the function `org-export-htmlize-region-for-paste' will produce code
that uses these same face definitions.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-export-icalendar-combine-agenda-files org-export-icalendar-all-agenda-files
;;;;;;  org-export-icalendar-this-file) "org-mode/lisp/org-icalendar"
;;;;;;  "org-mode/lisp/org-icalendar.el" (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-icalendar.el

(autoload 'org-export-icalendar-this-file "org-mode/lisp/org-icalendar" "\
Export current file as an iCalendar file.
The iCalendar file will be located in the same directory as the Org-mode
file, but with extension `.ics'.

\(fn)" t nil)

(autoload 'org-export-icalendar-all-agenda-files "org-mode/lisp/org-icalendar" "\
Export all files in the variable `org-agenda-files' to iCalendar .ics files.
Each iCalendar file will be located in the same directory as the Org-mode
file, but with extension `.ics'.

\(fn)" t nil)

(autoload 'org-export-icalendar-combine-agenda-files "org-mode/lisp/org-icalendar" "\
Export all files in `org-agenda-files' to a single combined iCalendar file.
The file is stored under the name `org-combined-agenda-icalendar-file'.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-id-store-link org-id-find-id-file org-id-find
;;;;;;  org-id-goto org-id-get-with-outline-drilling org-id-get-with-outline-path-completion
;;;;;;  org-id-get org-id-copy org-id-get-create) "org-mode/lisp/org-id"
;;;;;;  "org-mode/lisp/org-id.el" (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-id.el

(autoload 'org-id-get-create "org-mode/lisp/org-id" "\
Create an ID for the current entry and return it.
If the entry already has an ID, just return it.
With optional argument FORCE, force the creation of a new ID.

\(fn &optional FORCE)" t nil)

(autoload 'org-id-copy "org-mode/lisp/org-id" "\
Copy the ID of the entry at point to the kill ring.
Create an ID if necessary.

\(fn)" t nil)

(autoload 'org-id-get "org-mode/lisp/org-id" "\
Get the ID property of the entry at point-or-marker POM.
If POM is nil, refer to the entry at point.
If the entry does not have an ID, the function returns nil.
However, when CREATE is non nil, create an ID if none is present already.
PREFIX will be passed through to `org-id-new'.
In any case, the ID of the entry is returned.

\(fn &optional POM CREATE PREFIX)" nil nil)

(autoload 'org-id-get-with-outline-path-completion "org-mode/lisp/org-id" "\
Use outline-path-completion to retrieve the ID of an entry.
TARGETS may be a setting for `org-refile-targets' to define the eligible
headlines.  When omitted, all headlines in all agenda files are
eligible.
It returns the ID of the entry.  If necessary, the ID is created.

\(fn &optional TARGETS)" nil nil)

(autoload 'org-id-get-with-outline-drilling "org-mode/lisp/org-id" "\
Use an outline-cycling interface to retrieve the ID of an entry.
This only finds entries in the current buffer, using `org-get-location'.
It returns the ID of the entry.  If necessary, the ID is created.

\(fn &optional TARGETS)" nil nil)

(autoload 'org-id-goto "org-mode/lisp/org-id" "\
Switch to the buffer containing the entry with id ID.
Move the cursor to that entry in that buffer.

\(fn ID)" t nil)

(autoload 'org-id-find "org-mode/lisp/org-id" "\
Return the location of the entry with the id ID.
The return value is a cons cell (file-name . position), or nil
if there is no entry with that ID.
With optional argument MARKERP, return the position as a new marker.

\(fn ID &optional MARKERP)" nil nil)

(autoload 'org-id-find-id-file "org-mode/lisp/org-id" "\
Query the id database for the file in which this ID is located.

\(fn ID)" nil nil)

(autoload 'org-id-store-link "org-mode/lisp/org-id" "\
Store a link to the current entry, using its ID.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-indent-mode) "org-mode/lisp/org-indent" "org-mode/lisp/org-indent.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-indent.el

(autoload 'org-indent-mode "org-mode/lisp/org-indent" "\
When active, indent text according to outline structure.

Internally this works by adding `line-prefix' and `wrap-prefix'
properties, after each buffer modification, on the modified zone.

The process is synchronous.  Though, initial indentation of
buffer, which can take a few seconds on large buffers, is done
during idle time.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (org-irc-store-link) "org-mode/lisp/org-irc" "org-mode/lisp/org-irc.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-irc.el

(autoload 'org-irc-store-link "org-mode/lisp/org-irc" "\
Dispatch to the appropriate function to store a link to an IRC session.

\(fn)" nil nil)

;;;***

;;;### (autoloads (org-export-as-pdf-and-open org-export-as-pdf org-export-as-latex
;;;;;;  org-export-region-as-latex org-replace-region-by-latex org-export-as-latex-to-buffer
;;;;;;  org-export-as-latex-batch) "org-mode/lisp/org-latex" "org-mode/lisp/org-latex.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-latex.el

(autoload 'org-export-as-latex-batch "org-mode/lisp/org-latex" "\
Call `org-export-as-latex', may be used in batch processing.
For example:

emacs   --batch
        --load=$HOME/lib/emacs/org.el
        --eval \"(setq org-export-headline-levels 2)\"
        --visit=MyFile --funcall org-export-as-latex-batch

\(fn)" nil nil)

(autoload 'org-export-as-latex-to-buffer "org-mode/lisp/org-latex" "\
Call `org-export-as-latex` with output to a temporary buffer.
No file is created.  The prefix ARG is passed through to `org-export-as-latex'.

\(fn ARG)" t nil)

(autoload 'org-replace-region-by-latex "org-mode/lisp/org-latex" "\
Replace the region from BEG to END with its LaTeX export.
It assumes the region has `org-mode' syntax, and then convert it to
LaTeX.  This can be used in any buffer.  For example, you could
write an itemized list in `org-mode' syntax in an LaTeX buffer and
then use this command to convert it.

\(fn BEG END)" t nil)

(autoload 'org-export-region-as-latex "org-mode/lisp/org-latex" "\
Convert region from BEG to END in `org-mode' buffer to LaTeX.
If prefix arg BODY-ONLY is set, omit file header, footer, and table of
contents, and only produce the region of converted text, useful for
cut-and-paste operations.
If BUFFER is a buffer or a string, use/create that buffer as a target
of the converted LaTeX.  If BUFFER is the symbol `string', return the
produced LaTeX as a string and leave no buffer behind.  For example,
a Lisp program could call this function in the following way:

  (setq latex (org-export-region-as-latex beg end t 'string))

When called interactively, the output buffer is selected, and shown
in a window.  A non-interactive call will only return the buffer.

\(fn BEG END &optional BODY-ONLY BUFFER)" t nil)

(autoload 'org-export-as-latex "org-mode/lisp/org-latex" "\
Export current buffer to a LaTeX file.
If there is an active region, export only the region.  The prefix
ARG specifies how many levels of the outline should become
headlines.  The default is 3.  Lower levels will be exported
depending on `org-export-latex-low-levels'.  The default is to
convert them as description lists.
HIDDEN is obsolete and does nothing.
EXT-PLIST is a property list with
external parameters overriding org-mode's default settings, but
still inferior to file-local settings.  When TO-BUFFER is
non-nil, create a buffer with that name and export to that
buffer.  If TO-BUFFER is the symbol `string', don't leave any
buffer behind but just return the resulting LaTeX as a string.
When BODY-ONLY is set, don't produce the file header and footer,
simply return the content of \\begin{document}...\\end{document},
without even the \\begin{document} and \\end{document} commands.
when PUB-DIR is set, use this as the publishing directory.

\(fn ARG &optional HIDDEN EXT-PLIST TO-BUFFER BODY-ONLY PUB-DIR)" t nil)

(autoload 'org-export-as-pdf "org-mode/lisp/org-latex" "\
Export as LaTeX, then process through to PDF.

\(fn ARG &optional HIDDEN EXT-PLIST TO-BUFFER BODY-ONLY PUB-DIR)" t nil)

(autoload 'org-export-as-pdf-and-open "org-mode/lisp/org-latex" "\
Export as LaTeX, then process through to PDF, and open.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads (org-lparse-region org-replace-region-by org-lparse-to-buffer
;;;;;;  org-lparse-batch org-lparse-and-open) "org-mode/lisp/org-lparse"
;;;;;;  "org-mode/lisp/org-lparse.el" (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-lparse.el

(autoload 'org-lparse-and-open "org-mode/lisp/org-lparse" "\
Export outline to TARGET-BACKEND via NATIVE-BACKEND and open exported file.
If there is an active region, export only the region.  The prefix
ARG specifies how many levels of the outline should become
headlines.  The default is 3.  Lower levels will become bulleted
lists.

\(fn TARGET-BACKEND NATIVE-BACKEND ARG &optional FILE-OR-BUF)" nil nil)

(autoload 'org-lparse-batch "org-mode/lisp/org-lparse" "\
Call the function `org-lparse'.
This function can be used in batch processing as:
emacs   --batch
        --load=$HOME/lib/emacs/org.el
        --eval \"(setq org-export-headline-levels 2)\"
        --visit=MyFile --funcall org-lparse-batch

\(fn TARGET-BACKEND &optional NATIVE-BACKEND)" nil nil)

(autoload 'org-lparse-to-buffer "org-mode/lisp/org-lparse" "\
Call `org-lparse' with output to a temporary buffer.
No file is created.  The prefix ARG is passed through to
`org-lparse'.

\(fn BACKEND ARG)" nil nil)

(autoload 'org-replace-region-by "org-mode/lisp/org-lparse" "\
Assume the current region has org-mode syntax, and convert it to HTML.
This can be used in any buffer.  For example, you could write an
itemized list in org-mode syntax in an HTML buffer and then use
this command to convert it.

\(fn BACKEND BEG END)" nil nil)

(autoload 'org-lparse-region "org-mode/lisp/org-lparse" "\
Convert region from BEG to END in org-mode buffer to HTML.
If prefix arg BODY-ONLY is set, omit file header, footer, and table of
contents, and only produce the region of converted text, useful for
cut-and-paste operations.
If BUFFER is a buffer or a string, use/create that buffer as a target
of the converted HTML.  If BUFFER is the symbol `string', return the
produced HTML as a string and leave not buffer behind.  For example,
a Lisp program could call this function in the following way:

  (setq html (org-lparse-region \"html\" beg end t 'string))

When called interactively, the output buffer is selected, and shown
in a window.  A non-interactive call will only return the buffer.

\(fn BACKEND BEG END &optional BODY-ONLY BUFFER)" nil nil)

;;;***

;;;### (autoloads (org-mobile-create-sumo-agenda org-mobile-pull
;;;;;;  org-mobile-push) "org-mode/lisp/org-mobile" "org-mode/lisp/org-mobile.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-mobile.el

(autoload 'org-mobile-push "org-mode/lisp/org-mobile" "\
Push the current state of Org affairs to the WebDAV directory.
This will create the index file, copy all agenda files there, and also
create all custom agenda views, for upload to the mobile phone.

\(fn)" t nil)

(autoload 'org-mobile-pull "org-mode/lisp/org-mobile" "\
Pull the contents of `org-mobile-capture-file' and integrate them.
Apply all flagged actions, flag entries to be flagged and then call an
agenda view showing the flagged items.

\(fn)" t nil)

(autoload 'org-mobile-create-sumo-agenda "org-mode/lisp/org-mobile" "\
Create a file that contains all custom agenda views.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-export-as-odf-and-open org-export-as-odf org-export-odt-convert
;;;;;;  org-export-as-odt org-export-as-odt-batch org-export-as-odt-and-open)
;;;;;;  "org-mode/lisp/org-odt" "org-mode/lisp/org-odt.el" (20542
;;;;;;  52509))
;;; Generated autoloads from org-mode/lisp/org-odt.el

(autoload 'org-export-as-odt-and-open "org-mode/lisp/org-odt" "\
Export the outline as ODT and immediately open it with a browser.
If there is an active region, export only the region.
The prefix ARG specifies how many levels of the outline should become
headlines.  The default is 3.  Lower levels will become bulleted lists.

\(fn ARG)" t nil)

(autoload 'org-export-as-odt-batch "org-mode/lisp/org-odt" "\
Call the function `org-lparse-batch'.
This function can be used in batch processing as:
emacs   --batch
        --load=$HOME/lib/emacs/org.el
        --eval \"(setq org-export-headline-levels 2)\"
        --visit=MyFile --funcall org-export-as-odt-batch

\(fn)" nil nil)

(autoload 'org-export-as-odt "org-mode/lisp/org-odt" "\
Export the outline as a OpenDocumentText file.
If there is an active region, export only the region.  The prefix
ARG specifies how many levels of the outline should become
headlines.  The default is 3.  Lower levels will become bulleted
lists.  HIDDEN is obsolete and does nothing.
EXT-PLIST is a property list with external parameters overriding
org-mode's default settings, but still inferior to file-local
settings.  When TO-BUFFER is non-nil, create a buffer with that
name and export to that buffer.  If TO-BUFFER is the symbol
`string', don't leave any buffer behind but just return the
resulting XML as a string.  When BODY-ONLY is set, don't produce
the file header and footer, simply return the content of
<body>...</body>, without even the body tags themselves.  When
PUB-DIR is set, use this as the publishing directory.

\(fn ARG &optional HIDDEN EXT-PLIST TO-BUFFER BODY-ONLY PUB-DIR)" t nil)

(autoload 'org-export-odt-convert "org-mode/lisp/org-odt" "\
Convert IN-FILE to format OUT-FMT using a command line converter.
IN-FILE is the file to be converted.  If unspecified, it defaults
to variable `buffer-file-name'.  OUT-FMT is the desired output
format.  Use `org-export-odt-convert-process' as the converter.
If PREFIX-ARG is non-nil then the newly converted file is opened
using `org-open-file'.

\(fn &optional IN-FILE OUT-FMT PREFIX-ARG)" t nil)

(autoload 'org-export-as-odf "org-mode/lisp/org-odt" "\
Export LATEX-FRAG as OpenDocument formula file ODF-FILE.
Use `org-create-math-formula' to convert LATEX-FRAG first to
MathML.  When invoked as an interactive command, use
`org-latex-regexps' to infer LATEX-FRAG from currently active
region.  If no LaTeX fragments are found, prompt for it.  Push
MathML source to kill ring, if `org-export-copy-to-kill-ring' is
non-nil.

\(fn LATEX-FRAG &optional ODF-FILE)" t nil)

(autoload 'org-export-as-odf-and-open "org-mode/lisp/org-odt" "\
Export LaTeX fragment as OpenDocument formula and immediately open it.
Use `org-export-as-odf' to read LaTeX fragment and OpenDocument
formula file.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-plot/gnuplot) "org-mode/lisp/org-plot" "org-mode/lisp/org-plot.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-plot.el

(autoload 'org-plot/gnuplot "org-mode/lisp/org-plot" "\
Plot table using gnuplot.  Gnuplot options can be specified with PARAMS.
If not given options will be taken from the +PLOT
line directly before or after the table.

\(fn &optional PARAMS)" t nil)

;;;***

;;;### (autoloads (org-publish-current-project org-publish-current-file
;;;;;;  org-publish-all org-publish) "org-mode/lisp/org-publish"
;;;;;;  "org-mode/lisp/org-publish.el" (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-publish.el

(defalias 'org-publish-project 'org-publish)

(autoload 'org-publish "org-mode/lisp/org-publish" "\
Publish PROJECT.

\(fn PROJECT &optional FORCE)" t nil)

(autoload 'org-publish-all "org-mode/lisp/org-publish" "\
Publish all projects.
With prefix argument, remove all files in the timestamp
directory and force publishing all files.

\(fn &optional FORCE)" t nil)

(autoload 'org-publish-current-file "org-mode/lisp/org-publish" "\
Publish the current file.
With prefix argument, force publish the file.

\(fn &optional FORCE)" t nil)

(autoload 'org-publish-current-project "org-mode/lisp/org-publish" "\
Publish the project associated with the current file.
With a prefix argument, force publishing of all files in
the project.

\(fn &optional FORCE)" t nil)

;;;***

;;;### (autoloads (org-remember-handler org-remember org-remember-apply-template
;;;;;;  org-remember-annotation org-remember-insinuate) "org-mode/lisp/org-remember"
;;;;;;  "org-mode/lisp/org-remember.el" (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-remember.el

(autoload 'org-remember-insinuate "org-mode/lisp/org-remember" "\
Setup remember.el for use with Org-mode.

\(fn)" nil nil)

(autoload 'org-remember-annotation "org-mode/lisp/org-remember" "\
Return a link to the current location as an annotation for remember.el.
If you are using Org-mode files as target for data storage with
remember.el, then the annotations should include a link compatible with the
conventions in Org-mode.  This function returns such a link.

\(fn)" nil nil)

(autoload 'org-remember-apply-template "org-mode/lisp/org-remember" "\
Initialize *remember* buffer with template, invoke `org-mode'.
This function should be placed into `remember-mode-hook' and in fact requires
to be run from that hook to function properly.

\(fn &optional USE-CHAR SKIP-INTERACTIVE)" nil nil)

(autoload 'org-remember "org-mode/lisp/org-remember" "\
Call `remember'.  If this is already a remember buffer, re-apply template.
If there is an active region, make sure remember uses it as initial content
of the remember buffer.

When called interactively with a \\[universal-argument] prefix argument GOTO, don't remember
anything, just go to the file/headline where the selected template usually
stores its notes.  With a double prefix argument \\[universal-argument] \\[universal-argument], go to the last
note stored by remember.

Lisp programs can set ORG-FORCE-REMEMBER-TEMPLATE-CHAR to a character
associated with a template in `org-remember-templates'.

\(fn &optional GOTO ORG-FORCE-REMEMBER-TEMPLATE-CHAR)" t nil)

(autoload 'org-remember-handler "org-mode/lisp/org-remember" "\
Store stuff from remember.el into an org file.
When the template has specified a file and a headline, the entry is filed
there, or in the location defined by `org-default-notes-file' and
`org-remember-default-headline'.
\\<org-remember-mode-map>
If no defaults have been defined, or if the current prefix argument
is 1 (using C-1 \\[org-remember-finalize] to exit remember), an interactive
process is used to select the target location.

When the prefix is 0 (i.e. when remember is exited with C-0 \\[org-remember-finalize]),
the entry is filed to the same location as the previous note.

When the prefix is 2 (i.e. when remember is exited with C-2 \\[org-remember-finalize]),
the entry is filed as a subentry of the entry where the clock is
currently running.

When \\[universal-argument] has been used as prefix argument, the
note is stored and Emacs moves point to the new location of the
note, so that editing can be continued there (similar to
inserting \"%&\" into the template).

Before storing the note, the function ensures that the text has an
org-mode-style headline, i.e. a first line that starts with
a \"*\".  If not, a headline is constructed from the current date and
some additional data.

If the variable `org-adapt-indentation' is non-nil, the entire text is
also indented so that it starts in the same column as the headline
\(i.e. after the stars).

See also the variable `org-reverse-note-order'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (org-table-to-lisp orgtbl-mode turn-on-orgtbl org-table-iterate-buffer-tables
;;;;;;  org-table-recalculate-buffer-tables) "org-mode/lisp/org-table"
;;;;;;  "org-mode/lisp/org-table.el" (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-table.el

(autoload 'org-table-recalculate-buffer-tables "org-mode/lisp/org-table" "\
Recalculate all tables in the current buffer.

\(fn)" t nil)

(autoload 'org-table-iterate-buffer-tables "org-mode/lisp/org-table" "\
Iterate all tables in the buffer, to converge inter-table dependencies.

\(fn)" t nil)

(autoload 'turn-on-orgtbl "org-mode/lisp/org-table" "\
Unconditionally turn on `orgtbl-mode'.

\(fn)" nil nil)

(autoload 'orgtbl-mode "org-mode/lisp/org-table" "\
The `org-mode' table editor as a minor mode for use in other modes.

\(fn &optional ARG)" t nil)

(autoload 'org-table-to-lisp "org-mode/lisp/org-table" "\
Convert the table at point to a Lisp structure.
The structure will be a list.  Each item is either the symbol `hline'
for a horizontal separator line, or a list of field values as strings.
The table is taken from the parameter TXT, or from the buffer at point.

\(fn &optional TXT)" nil nil)

;;;***

;;;### (autoloads (org-export-as-taskjuggler-and-open org-export-as-taskjuggler)
;;;;;;  "org-mode/lisp/org-taskjuggler" "org-mode/lisp/org-taskjuggler.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-taskjuggler.el

(autoload 'org-export-as-taskjuggler "org-mode/lisp/org-taskjuggler" "\
Export parts of the current buffer as a TaskJuggler file.
The exporter looks for a tree with tag, property or todo that
matches `org-export-taskjuggler-project-tag' and takes this as
the tasks for this project.  The first node of this tree defines
the project properties such as project name and project period.
If there is a tree with tag, property or todo that matches
`org-export-taskjuggler-resource-tag' this three is taken as
resources for the project.  If no resources are specified, a
default resource is created and allocated to the project.  Also
the taskjuggler project will be created with default reports as
defined in `org-export-taskjuggler-default-reports'.

\(fn &optional ARG HIDDEN EXT-PLIST TO-BUFFER BODY-ONLY PUB-DIR)" t nil)

(autoload 'org-export-as-taskjuggler-and-open "org-mode/lisp/org-taskjuggler" "\
Export the current buffer as a TaskJuggler file and open it
with the TaskJuggler GUI.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-timer-set-timer org-timer-item org-timer-change-times-in-region
;;;;;;  org-timer org-timer-stop org-timer-pause-or-continue org-timer-start)
;;;;;;  "org-mode/lisp/org-timer" "org-mode/lisp/org-timer.el" (20542
;;;;;;  52509))
;;; Generated autoloads from org-mode/lisp/org-timer.el

(autoload 'org-timer-start "org-mode/lisp/org-timer" "\
Set the starting time for the relative timer to now.
When called with prefix argument OFFSET, prompt the user for an offset time,
with the default taken from a timer stamp at point, if any.
If OFFSET is a string or an integer, it is directly taken to be the offset
without user interaction.
When called with a double prefix arg, all timer strings in the active
region will be shifted by a specific amount.  You will be prompted for
the amount, with the default to make the first timer string in
the region 0:00:00.

\(fn &optional OFFSET)" t nil)

(autoload 'org-timer-pause-or-continue "org-mode/lisp/org-timer" "\
Pause or continue the relative timer.
With prefix arg STOP, stop it entirely.

\(fn &optional STOP)" t nil)

(autoload 'org-timer-stop "org-mode/lisp/org-timer" "\
Stop the relative timer.

\(fn)" t nil)

(autoload 'org-timer "org-mode/lisp/org-timer" "\
Insert a H:MM:SS string from the timer into the buffer.
The first time this command is used, the timer is started.  When used with
a \\[universal-argument] prefix, force restarting the timer.
When used with a double prefix argument \\[universal-argument], change all the timer string
in the region by a fixed amount.  This can be used to recalibrate a timer
that was not started at the correct moment.

If NO-INSERT-P is non-nil, return the string instead of inserting
it in the buffer.

\(fn &optional RESTART NO-INSERT-P)" t nil)

(autoload 'org-timer-change-times-in-region "org-mode/lisp/org-timer" "\
Change all h:mm:ss time in region by a DELTA.

\(fn BEG END DELTA)" t nil)

(autoload 'org-timer-item "org-mode/lisp/org-timer" "\
Insert a description-type item with the current timer value.

\(fn &optional ARG)" t nil)

(autoload 'org-timer-set-timer "org-mode/lisp/org-timer" "\
Prompt for a duration and set a timer.

If `org-timer-default-timer' is not zero, suggest this value as
the default duration for the timer.  If a timer is already set,
prompt the user if she wants to replace it.

Called with a numeric prefix argument, use this numeric value as
the duration of the timer.

Called with a `C-u' prefix arguments, use `org-timer-default-timer'
without prompting the user for a duration.

With two `C-u' prefix arguments, use `org-timer-default-timer'
without prompting the user for a duration and automatically
replace any running timer.

\(fn &optional OPT)" t nil)

;;;***

;;;### (autoloads (org-git-version org-release) "org-mode/lisp/org-version"
;;;;;;  "org-mode/lisp/org-version.el" (20542 52512))
;;; Generated autoloads from org-mode/lisp/org-version.el

(autoload 'org-release "org-mode/lisp/org-version" "\
The release version of org-mode.
  Inserted by installing org-mode or when a release is made.

\(fn)" nil nil)

(autoload 'org-git-version "org-mode/lisp/org-version" "\
The Git version of org-mode.
  Inserted by installing org-mode or when a release is made.

\(fn)" nil nil)

(defconst org-odt-data-dir "/usr/share/emacs/etc/org" "\
The location of ODT styles.")

;;;***

;;;### (autoloads (org-export-as-xoxo) "org-mode/lisp/org-xoxo" "org-mode/lisp/org-xoxo.el"
;;;;;;  (20542 52509))
;;; Generated autoloads from org-mode/lisp/org-xoxo.el

(autoload 'org-export-as-xoxo "org-mode/lisp/org-xoxo" "\
Export the org buffer as XOXO.
The XOXO buffer is named *xoxo-<source buffer name>*

\(fn &optional BUFFER)" t nil)

;;;***

;;;### (autoloads nil nil ("auctex/auctex.el" "auctex/auto-loads.el"
;;;;;;  "auctex/lpath.el" "auctex/preview/auto.el" "auctex/preview/preview-latex.el"
;;;;;;  "auctex/preview/prv-emacs.el" "auctex/preview/prv-install.el"
;;;;;;  "auctex/preview/prv-xemacs.el" "auctex/tex-buf.el" "auctex/tex-mik.el"
;;;;;;  "auctex/tex-site.el" "auctex/tex-style.el" "auctex/tex-wizard.el"
;;;;;;  "el-get/el-get-autoloads.el" "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "org-mode/contrib/lisp/org-annotate-file.el"
;;;;;;  "org-mode/contrib/lisp/org-bibtex-extras.el" "org-mode/contrib/lisp/org-bookmark.el"
;;;;;;  "org-mode/contrib/lisp/org-checklist.el" "org-mode/contrib/lisp/org-choose.el"
;;;;;;  "org-mode/contrib/lisp/org-collector.el" "org-mode/contrib/lisp/org-contribdir.el"
;;;;;;  "org-mode/contrib/lisp/org-depend.el" "org-mode/contrib/lisp/org-drill.el"
;;;;;;  "org-mode/contrib/lisp/org-e-groff.el" "org-mode/contrib/lisp/org-e-man.el"
;;;;;;  "org-mode/contrib/lisp/org-e-texinfo.el" "org-mode/contrib/lisp/org-elisp-symbol.el"
;;;;;;  "org-mode/contrib/lisp/org-eval-light.el" "org-mode/contrib/lisp/org-eval.el"
;;;;;;  "org-mode/contrib/lisp/org-exp-bibtex.el" "org-mode/contrib/lisp/org-expiry.el"
;;;;;;  "org-mode/contrib/lisp/org-git-link.el" "org-mode/contrib/lisp/org-interactive-query.el"
;;;;;;  "org-mode/contrib/lisp/org-invoice.el" "org-mode/contrib/lisp/org-jira.el"
;;;;;;  "org-mode/contrib/lisp/org-learn.el" "org-mode/contrib/lisp/org-mac-iCal.el"
;;;;;;  "org-mode/contrib/lisp/org-mac-link-grabber.el" "org-mode/contrib/lisp/org-mairix.el"
;;;;;;  "org-mode/contrib/lisp/org-man.el" "org-mode/contrib/lisp/org-mime.el"
;;;;;;  "org-mode/contrib/lisp/org-mtags.el" "org-mode/contrib/lisp/org-notify.el"
;;;;;;  "org-mode/contrib/lisp/org-notmuch.el" "org-mode/contrib/lisp/org-panel.el"
;;;;;;  "org-mode/contrib/lisp/org-screen.el" "org-mode/contrib/lisp/org-secretary.el"
;;;;;;  "org-mode/contrib/lisp/org-static-mathjax.el" "org-mode/contrib/lisp/org-sudoku.el"
;;;;;;  "org-mode/contrib/lisp/org-velocity.el" "org-mode/contrib/lisp/org-wikinodes.el"
;;;;;;  "org-mode/contrib/lisp/orgtbl-sqlinsert.el" "org-mode/lisp/ob-C.el"
;;;;;;  "org-mode/lisp/ob-R.el" "org-mode/lisp/ob-asymptote.el" "org-mode/lisp/ob-awk.el"
;;;;;;  "org-mode/lisp/ob-calc.el" "org-mode/lisp/ob-clojure.el"
;;;;;;  "org-mode/lisp/ob-comint.el" "org-mode/lisp/ob-css.el" "org-mode/lisp/ob-ditaa.el"
;;;;;;  "org-mode/lisp/ob-dot.el" "org-mode/lisp/ob-emacs-lisp.el"
;;;;;;  "org-mode/lisp/ob-eval.el" "org-mode/lisp/ob-exp.el" "org-mode/lisp/ob-fortran.el"
;;;;;;  "org-mode/lisp/ob-gnuplot.el" "org-mode/lisp/ob-haskell.el"
;;;;;;  "org-mode/lisp/ob-io.el" "org-mode/lisp/ob-java.el" "org-mode/lisp/ob-js.el"
;;;;;;  "org-mode/lisp/ob-latex.el" "org-mode/lisp/ob-ledger.el"
;;;;;;  "org-mode/lisp/ob-lilypond.el" "org-mode/lisp/ob-lisp.el"
;;;;;;  "org-mode/lisp/ob-matlab.el" "org-mode/lisp/ob-maxima.el"
;;;;;;  "org-mode/lisp/ob-mscgen.el" "org-mode/lisp/ob-ocaml.el"
;;;;;;  "org-mode/lisp/ob-octave.el" "org-mode/lisp/ob-org.el" "org-mode/lisp/ob-perl.el"
;;;;;;  "org-mode/lisp/ob-picolisp.el" "org-mode/lisp/ob-plantuml.el"
;;;;;;  "org-mode/lisp/ob-python.el" "org-mode/lisp/ob-ref.el" "org-mode/lisp/ob-ruby.el"
;;;;;;  "org-mode/lisp/ob-sass.el" "org-mode/lisp/ob-scala.el" "org-mode/lisp/ob-scheme.el"
;;;;;;  "org-mode/lisp/ob-screen.el" "org-mode/lisp/ob-sh.el" "org-mode/lisp/ob-shen.el"
;;;;;;  "org-mode/lisp/ob-sql.el" "org-mode/lisp/ob-sqlite.el" "org-mode/lisp/ob-table.el"
;;;;;;  "org-mode/lisp/org-beamer.el" "org-mode/lisp/org-bibtex.el"
;;;;;;  "org-mode/lisp/org-colview-xemacs.el" "org-mode/lisp/org-colview.el"
;;;;;;  "org-mode/lisp/org-crypt.el" "org-mode/lisp/org-ctags.el"
;;;;;;  "org-mode/lisp/org-docview.el" "org-mode/lisp/org-entities.el"
;;;;;;  "org-mode/lisp/org-eshell.el" "org-mode/lisp/org-exp-blocks.el"
;;;;;;  "org-mode/lisp/org-faces.el" "org-mode/lisp/org-gnus.el"
;;;;;;  "org-mode/lisp/org-habit.el" "org-mode/lisp/org-info.el"
;;;;;;  "org-mode/lisp/org-inlinetask.el" "org-mode/lisp/org-install.el"
;;;;;;  "org-mode/lisp/org-jsinfo.el" "org-mode/lisp/org-list.el"
;;;;;;  "org-mode/lisp/org-mac-message.el" "org-mode/lisp/org-macs.el"
;;;;;;  "org-mode/lisp/org-mew.el" "org-mode/lisp/org-mhe.el" "org-mode/lisp/org-mks.el"
;;;;;;  "org-mode/lisp/org-mouse.el" "org-mode/lisp/org-pcomplete.el"
;;;;;;  "org-mode/lisp/org-protocol.el" "org-mode/lisp/org-rmail.el"
;;;;;;  "org-mode/lisp/org-special-blocks.el" "org-mode/lisp/org-src.el"
;;;;;;  "org-mode/lisp/org-vm.el" "org-mode/lisp/org-w3m.el" "org-mode/lisp/org-wl.el")
;;;;;;  (20542 53517 774659))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
