---
layout: default
title: Examples of files
---

# {{ page.title }}

## Formatted text files

Here is a list of example files. 

Each file is produced with the command that directly precedes it.

<a href="{{ base.url}}/refsheets/examples/usconstitution.txt" target="_blank">Original TXT file</a>

<a href="{{ base.url}}/refsheets/examples/usconstitution.md" target="_blank">My Markdown file</a>

`pandoc -S -o usconstitution.odt usconstitution.md`

<a href="{{ base.url}}/refsheets/examples/usconstitution.odt" target="_blank">ODT file created by Pandoc</a>

`pandoc -S -o usconstitution.docx usconstitution.md`

<a href="{{ base.url}}/refsheets/examples/usconstitution.docx" target="_blank">DOCX file created by Pandoc</a>

`pandoc -S --title="THE CONSTITUTION OF THE UNITED STATES OF AMERICA, 1787" -o usconstitution.html usconstitution.md && pandoc -S --toc -o usconstitution.pdf usconstitution.html`

<a href="{{ base.url}}/refsheets/examples/usconstitution.pdf" target="_blank">PDF file created by Pandoc (first stage conversion to HTML to preserve table formatting)</a>