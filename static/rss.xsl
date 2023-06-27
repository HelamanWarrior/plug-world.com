<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
 <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
 <xsl:template match="/">
   <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
   <head>
     <title><xsl:value-of select="/rss/channel/title"/> RSS Feed</title>
     <style>
       body {
	 max-width: 50rem;
	 margin: auto;
       }
       .site-details {
         padding-top: 4rem;
	 padding-bottom: 4rem;
       }
       .rss-details {
         background-color: blue;
	 padding: 1rem;
       }
       .post-card {
         padding-bottom: 2rem;	
       }
     </style>
   </head>
   <body>
     <div class="rss-details">
     <p>
       This is an RSS feed. You can <strong>Subscribe</strong> by copy-pasting the URL into your RSS feed reader.
     </p>
     <p>
       Visit
       <a href="https://aboutfeeds.com">About Feeds</a>
       to learn more and get started. It's free.
     </p>
     </div>
   <div class="site-details">
     <h1>plug-world.com</h1>
     <a href="https://plug-world.com">Visit Website → </a>
   </div>
   <h2>Recent posts</h2>
   <xsl:for-each select="/rss/channel/item">
     <div class="post-card">
       <a>
         <xsl:attribute name="href">
                 <xsl:value-of select="link"/>
         </xsl:attribute>
         <xsl:value-of select="title"/>
       </a>
       <footer>
         Published:
         <time>
           <xsl:value-of select="pubDate" />
         </time>
       </footer>
     </div>
   </xsl:for-each>
  </body>
  </html>
 </xsl:template>
</xsl:stylesheet>
