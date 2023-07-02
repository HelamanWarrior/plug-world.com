<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
 <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
 <xsl:template match="/">
   <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
   <head>
     <title><xsl:value-of select="/rss/channel/title"/> RSS Feed</title>
     <meta charset="UTF-8" />
     <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
     <meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1,shrink-to-fit=no" />
     <style>
       body {
	 max-width: 50rem;
	 padding: 1rem;
	 margin: auto;
       }
       .site-details {
	 display: flex;
	 flex-wrap: wrap;
         padding-top: 4rem;
	 padding-bottom: 4rem;
       }
       .site-details img {
	 padding-right: 2rem;
       }
       .site-details p {
	 color: #7F7F7F;
       }
       .rss-details {
         background-color: #E0E5F5;
	 border-style: solid;
	 border-width: 0.15rem;
	 border-color: #9895D5;
	 border-radius: 0.8rem;
	 padding: 1rem;
	 margin-top: 1rem;
       }
       .post-card {
         padding-bottom: 2rem;	
	 border-top: 1px solid rgba(0,0,0,.04);
       }
       .post-card a {
	 color: rgba(0,0,0,.98);
	 text-decoration: none;
       }
       footer {
	 font-size: 14px;
	 color: #7F7F7F;
       }
       #profile-pic {
	 width: 9rem;
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
     <img id="profile-pic" src="/images/profile/profile-pic.jpg" />
     <div>
     	<h1>plug-world.com</h1>
	<p>Doin things on computers.</p>
     	<a href="https://plug-world.com">Visit Website → </a>
     </div>
   </div>
   <xsl:for-each select="/rss/channel/item">
     <div class="post-card">
       <h2>
         <a>
           <xsl:attribute name="href">
                   <xsl:value-of select="link"/>
           </xsl:attribute>
           <xsl:value-of select="title"/>
         </a>
       </h2>
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
