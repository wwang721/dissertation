$ENV{'TZ'}='America/New_York';
$xelatex = 'xelatex -output-driver="xdvipdfmx -z 0" %O %S';
$pdflatex = 'pdflatex -shell-escape -synctex=1 -interaction=nonstopmode %O %S';