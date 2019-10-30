

data/chapter_links.txt : setup
	grep 'file:[^ ]*.html]' *.org | cut -d':' -f 3-4 | cut -d']' -f1 | sort | uniq > $@
	grep -ho '\[file:.*' *.org | grep html | cut -d':' -f2 | grep '#' | cut -d'#' -f1 | sort | uniq >> $@

setup:
	mkdir -p data

htmlLinks:
	# grep '\[file:[^ ]*.html#' *.org

	grep -n file *.org | grep '\.html' | grep -v 'bibliography.html'

quote_marks:
	sed -i 's/“/"/g' *.org
	sed -i 's/”/"/g' *.org
