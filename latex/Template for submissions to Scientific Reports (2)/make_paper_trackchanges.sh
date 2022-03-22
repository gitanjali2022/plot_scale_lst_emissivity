#!/bin/sh
#compiles and runs the model


texfile_old=$1
texfile_new=$2
outfile=$3


file=${outfile##*/}
file_short=${file%".pdf"*}
outdir=${outfile%$file*}

texfile_short=${texfile_new##*/}
src_dir=${texfile_new%$texfile_short*}

echo $file
echo $file_short
echo $outdir
echo $texfile_short
echo $src_dir

mkdir .renku/tmp/

latexdiff -t UNDERLINE --math-markup=0 $texfile_old $texfile_new > $src_dir/diff.tex


#go over texfile and find all inputs
echo "Image files: "

grep "\includegraphics" $src_dir/diff.tex | while read -r line ; do

   part1=${line#*{}
   file=${part1%'}'*}

   file_short=${file#*/}

   #find file in repository 
   file2=$(find data/ -type f | grep $file_short)

   #write all inputs to .renku/tmp/inputs.txt if it exists
   if test -f "$file2"; then
    echo $file2 >> .renku/tmp/inputs.txt 
    echo $file2
   fi



done


echo "Bib-files: "
grep -F "\bibliography{" $src_dir/diff.tex | while read -r line ; do

   part1=${line#*{}
   file=${part1%'}'*}

   file_short=${file#*/}
   
   #find file in repository 
   file2=$(find src/ -type f | grep $file_short)

   echo $file2

   #write all inputs to .renku/tmp/inputs.txt
   echo $file2 >> .renku/tmp/inputs.txt

done


echo "Style-files: "
grep -F "\documentclass[" $src_dir/diff.tex | while read -r line ; do

   part1=${line#*{}
   file=${part1%'}'*}
   
   file_short=${file#*/}

   #find file in repository 
   file2=$(find src/ -type f | grep $file_short.bst)

   #write all inputs to .renku/tmp/inputs.txt
   echo $file2
   echo $file2 >> .renku/tmp/inputs.txt  

   file2=$(find src/ -type f | grep $file_short.cfg)   
   echo $file2
   echo $file2 >> .renku/tmp/inputs.txt
   
   file2=$(find src/ -type f | grep $file_short.cls)   
   echo $file2   
   echo $file2 >> .renku/tmp/inputs.txt
done


cd $src_dir




#compile the pdf
pdflatex -jobname $file_short diff.tex 
bibtex $file_short
pdflatex -jobname $file_short diff.tex 
pdflatex -jobname $file_short diff.tex 

cd -

#move files to output dir. 
cp $src_dir/diff.pdf $outfile
cp $src_dir$file_short.pdf $outdir$file_short.pdf

rm $src_dir/diff.tex
rm $src_dir$file_short.aux
rm $src_dir$file_short.log
rm $src_dir$file_short.bbl
rm $src_dir$file_short.blg
rm $src_dir$file_short.pdf

