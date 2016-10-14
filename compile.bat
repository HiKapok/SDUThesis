@echo off
del paper.pdf >nul 2>nul
if exist paper.pdf (
	echo Close the file: paper.pdf!
	echo Or use Sumatra to open paper.pdf
	pause
	exit
)

echo Compile...
echo xelatex -no-pdf paper...
xelatex -no-pdf paper >nul
echo bibtex paper...
bibtex paper >nul
echo xelatex paper...
xelatex paper >nul
xelatex paper >nul
echo clean files...

del *.aux *.run.xml *.bcf *.log *.xdv *.bbl *.bak *.blg *.out *.thm *.toc *.synctex* *.glg *.glo *.gls *.ist *.idx *.ilg *.ind *.acn *.acr *.lof *.lot *.alg *.glsdefs >nul 2>nul
cd body
del *.aux *.run.xml *.bcf *.log *.xdv *.bbl *.bak *.blg *.out *.thm *.toc *.synctex* *.glg *.glo *.gls *.ist *.idx *.ilg *.ind *.acn *.acr *.lof *.lot *.alg *.glsdefs >nul 2>nul
cd ..
cd appendix
del *.aux *.run.xml *.bcf *.log *.xdv *.bbl *.bak *.blg *.out *.thm *.toc *.synctex* *.glg *.glo *.gls *.ist *.idx *.ilg *.ind *.acn *.acr *.lof *.lot *.alg *.glsdefs >nul 2>nul
cd ..
cd setup
del *.aux *.run.xml *.bcf *.log *.xdv *.bbl *.bak *.blg *.out *.thm *.toc *.synctex* *.glg *.glo *.gls *.ist *.idx *.ilg *.ind *.acn *.acr *.lof *.lot *.alg *.glsdefs >nul 2>nul
cd ..
cd preface
del *.aux *.run.xml *.bcf *.log *.xdv *.bbl *.bak *.blg *.out *.thm *.toc *.synctex* *.glg *.glo *.gls *.ist *.idx *.ilg *.ind *.acn *.acr *.lof *.lot *.alg *.glsdefs >nul 2>nul
%%start paper.pdf >nul 2>nul
echo finish...
pause
