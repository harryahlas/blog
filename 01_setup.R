# Set up git, new project here --------------------------------------------

#blogdown::new_site(dir = "wwwharrycom3", theme = "digitalcraftsman/hugo-cactus-theme")
blogdown::new_site(theme = "digitalcraftsman/hugo-cactus-theme", sample = FALSE)


# Make these adds/changes to config.toml ----------------------------------
# Or copy from alternate

# baseurl = "/"
# ignoreFiles = ["\\.Rmd$", "\\.Rmarkdown$", "_files$", "_cache$"]


# Other updates -----------------------------------------------------------

# Add avatar to public/images/avatar.png or similar, also avatar@2

# add below to config.toml (untested)
# highlightjsVersion = "9.11.0"
# highlightjsCDN = "//cdn.bootcss.com"
# highlightjsLang = ["r", "yaml"]
# highlightjsTheme = "github"
# MathJaxCDN = "//cdn.bootcss.com"
# MathJaxVersion = "2.7.1"

# Add a post --------------------------------------------------------------

blogdown:::new_post_addin()


#setwd("wwwharrycom3")
#blogdown::serve_site("wwwharrycom3")
blogdown::serve_site()


# Upload to main site -----------------------------------------------------

# update config.toml: baseurl = "http://www.earlydemise.com/blogtest/"
# Run 02_URLfix_upload.R

# get highlight.js from here: https://highlightjs.org/download/
# save over themes/name-of-your-theme/static/js/highlight.js

# (not sure if needed:) add below to C:\Development\github\blogtest\themes\hugo-cactus-theme\layouts\partials\head.html
#<link rel="stylesheet" href="{{"css/github-gist.css" | absURL}}" rel="stylesheet" id="theme-stylesheet">
#<script src="{{ "js/highlight.pack.js" | absURL }}"></script>
#<script>hljs.initHighlightingOnLoad();</script>
  


# old ---------------------------------------------------------------------


#https://bookdown.org/yihui/blogdown/installation.html
## Install from CRAN
install.packages("blogdown")
## Or, install from GitHub
# if (!requireNamespace("devtools")) install.packages("devtools")
# devtools::install_github("rstudio/blogdown")

library(blogdown)

blogdown::install_hugo()

blogdown::new_site("web_site_folder")

setwd("web_site_folder")
blogdown::serve_site()
