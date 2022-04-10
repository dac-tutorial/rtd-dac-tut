FILES=*.md
for f in $FILES
do
  filename="${f%.*}"
  echo "Converting $f to $filename.rst"
  `pandoc $f -f markdown -t rst -o $filename.rst`
done