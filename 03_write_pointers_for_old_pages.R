# Write pointer from old locations
library(tidyverse)

html_add <- '<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Refresh" content="0; url=http://harry.ahlas.com/post/the-hrsample-package-and-database/" />
  </head>
  <body>
    <p>Please follow <a href="//http://harry.ahlas.com/post/the-hrsample-package-and-database//">this link</a>.</p>
  </body>
</html>'


dir.create("public/2019/03/17/hrsample-database",recursive = TRUE)

write_lines(html_add, "public/2019/03/17/hrsample-database/index.html")
