// scrape_codersrank.js

var webPage = require('webpage');
var page = webPage.create();

var fs = require('fs');
var path = 'codersrank.html';

page.open('https://profile.codersrank.io/leaderboard?country=Denmark&technology=R', function (status) {
  var content = page.content;
  fs.write(path,content,'w');
  phantom.exit();
});


