# -*- coding: utf-8 -*-

Fabricator(:validator) do
  content "What's this tool about? Today it can take a lot of time to make your web experiences look great (or just work) across various browsers and devices. This tool detects common coding practices that may cause compatibility problems or prevent your users from getting the best possible experience on a webpage. Whenever possible we suggest a fix or enhancement with web standards like HTML5 & CSS3 (or a graceful fallback). It's not a complete checklist for coding the modern web – just a starting point so you can spend less time testing for IE and more time building what matters on the web"
  format  "http://www.modern.ie/report#%e"
  iframe true
  name    "modern.IE"
  priority 1
end
