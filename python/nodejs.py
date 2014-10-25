import commands
import sys
#import casperjs
#import phantomjs
url=sys.argv[1]
#print url
#print commands.getstatusoutput('node.io query "http://www.reddit.com" a.title href')
#print 'go'
#print commands.getoutput('node cheer7meta.js '+url)
#node cheer7meta.js
#print commands.getstatusoutput('cd /opt/bitnami/apps/drupal/htdocs/feeds/play && node app.js globegraf.com:3000')
#print commands.getstatusoutput('node.io ../scraping/111mil')
#print commands.getstatusoutput('node '+url)
print commands.getstatusoutput('casperjs /opt/bitnami/apps/drupal/htdocs/feeds/casperscreens.js '+url)




#print commands.getstatusoutput('python /opt/bitnami/apps/drupal/htdocs/feeds/build/youtube-dl/youtube_dl/YoutubeDLPlaylist.py '+url)
