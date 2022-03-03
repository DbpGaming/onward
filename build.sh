FILES="*.html"
TMP="tmp"
FOOTER=$(sed -z 's/\n/\\n/g' < footer.tpl)
NAV=$(sed -z 's/\n/\\n/g' < nav.tpl)

for FILE in $FILES
do
	sed -z "s;<footer>.*</footer>;$FOOTER;g" $FILE > $TMP
	mv -f $TMP $FILE
	sed -z "s;<header>.*<img;$NAV;g" $FILE > $TMP
	mv -f $TMP $FILE
done