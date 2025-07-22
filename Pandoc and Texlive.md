## Pandoc and Texlive on Linux
### Install TexLive
Temrux doesn't have `texlive-full`, Chroot/Proot is ok.
```
sudo apt install texlive-full
sudo apt-get update
sudo apt-get upgrade texlive*
sudo mktexlsr
```
### Use TexLive
```
xelatex a.tex
```
### Install Pandoc
```
sudo apt install pandoc
```
### Use Pandoc
```
pandoc a.md -o a.pdf
```
#### Input Formats
- **Markdown**: `.md`, `.markdown`
- **HTML**: `.html`, `.htm`
- **LaTeX**: `.tex`
- **Word**: `.docx`
- **OpenDocument Text**: `.odt`
- **EPUB**: `.epub`
- **PDF**: `.pdf` (though typically for conversion, the input is not PDF directly)
- **reStructuredText**: `.rst`
- **Textile**: `.textile`
- **Org mode**: `.org`
- **MediaWiki**: `.wiki`
- **Asciidoc**: `.asciidoc`, `.adoc`
- **CommonMark**: `.commonmark`, `.cm`
- **OPML**: `.opml`
- **DocBook**: `.dbk`
- **JATS**: `.jats`
- **Haddock markup**: `.hs`
#### Output Formats
- **Markdown**: `.md`, `.markdown`
- **HTML**: `.html`, `.htm`
- **LaTeX**: `.tex`
- **Word**: `.docx`
- **OpenDocument Text**: `.odt`
- **EPUB**: `.epub`
- **PDF**: `.pdf`
- **reStructuredText**: `.rst`
- **Textile**: `.textile`
- **Org mode**: `.org`
- **MediaWiki**: `.wiki`
- **Asciidoc**: `.asciidoc`, `.adoc`
- **CommonMark**: `.commonmark`, `.cm`
- **OPML**: `.opml`
- **DocBook**: `.dbk`
- **JATS**: `.jats`
- **Haddock markup**: `.hs`
- **PowerPoint**: `.pptx`
- **Plain text**: `.txt`
- **RTF**: `.rtf`
- **JSON**: `.json`
- **TEI**: `.tei`, `.xml`