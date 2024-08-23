# Internship report M1

**Intern :** Benoît Huftier  
**Supervisors :** Michal Milipczuk and Giannos Stamoulis

## Build

We use Latex Workshop extension for vscode and change the setting variable `latex-workshop.latex.outDir` to `%WORKSPACE_FOLDER%/build`.  
You can also compile by running this command in the project root folder:

```
latexmk -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error -pdf -outdir=../build -cd src/report.tex
```

At the end, the output is stored in `build/presentation.pdf`