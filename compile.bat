@echo off
del sdumain.pdf >nul 2>nul
if exist sdumain.pdf (
	echo Close the file: sdumain.pdf!!!
	echo Or use Sumatra to open sdumain.pdf
	pause
	exit
)

echo Compile...
echo xelatex -no-pdf sdumain...
xelatex -no-pdf sdumain >nul
echo bibtex sdumain...
bibtex sdumain >nul
echo xelatex sdumain...
xelatex sdumain >nul
xelatex sdumain >nul
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
%%start sdumain.pdf >nul 2>nul
echo finish...
pause
