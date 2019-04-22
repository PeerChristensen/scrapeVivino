// scrape_vivino.js

var webPage = require('webpage');
var page = webPage.create();

var fs = require('fs');
var path = 'vivino.html';

page.open('https://www.vivino.com/search/wines?q=a', function (status) {
  var content = page.content;
  fs.write(path,content,'w');
  phantom.exit();
});

// use: system("./phantomjs scrape_vivino.js")