if [ "$1" = "" ];then
    ext=""
elif [ "$1" = "ts" ]; then
    ext=$(date -Iseconds)
else
    exit 1
fi

xelatex Resume_Piyush.tex 
mv *.out *.log *.pdf *.aux output/
mv output/Resume_Piyush.pdf output/Resume_Piyush_${ext}.pdf
