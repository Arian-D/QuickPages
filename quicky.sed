#Title
s/-TITLE- \(.*\)/\<title\>\1\<\/title\>/

#Metadata
1s/^/\<html\>\n\<head\>\n/
1a <link rel='stylesheet' type='text/css' href='style.css'>\n</head>\n</body>

#Every line is a paragraph
s/^[^-><].*/\<p\>&\<\/p\>/g

#Hyperlinks
s/\$\(.*\)\$\(.*\)\$/\<a href=\'\1\'\>\2\<\/a\>/g

#Phone numbers
s/-TEL-\(.*\)-/\<a class\=\"tel\" href=\'tel\:\1\'\>\&\#9742\;\1\<\/a\>/g 

#Images
s/-IMAGE-\(.*\)-/\<img src=\'\1\' \/\>/g

#Center
s/-CENTER- .*/\<div style=\'text-align\: center\'\>&\<\/div\>/g

#Headings
s/-MAIN-HEADING- .*/\<div class=\'main-heading\'\>\<h1\>&\<\/h1\>\<\/div\>\<br\>\<br\>\<br\>/g
s/-HEADING- .*/\<h1\>&\<\/h1\>/g
s/-HEADIN- .*/\<h2\>&\<\/h2\>/g
s/-HEADI- .*/\<h3\>&\<\/h3\>/g
s/-HEAD- .*/\<h4\>&\<\/h4\>/g
s/-HEA- .*/\<h5\>&\<\/h5\>/g
s/-HE- .*/\<h6\>&\<\/h6\>/g

#Line
s/-LINE-/\<hr\>/g

#Line break
s/-BREAK-/\<br\>/g

#Remove quicky commands
s/\-[A-Z].*\- *//g
$a\<\/body\>\n\<\/html\>
