setwd("C:\\Development\\github\\blog")


blog_files <- list.files(getwd(), 
                         #pattern=(".html"),
                         full.names=F,
                         recursive = TRUE)

local_url <- "C:\\\\Development\\\\blog\\\\harry\\\\public"
new_url <- "http://earlydemise.com/blog/public"

local_url <- "http://earlydemise.com/blog"
new_url <- "C:\\\\Development\\\\blog\\\\harry\\\\public"



for(blog_file in blog_files) {
  x <- readLines(blog_file)
  y <- gsub(local_url, new_url, x)
  cat(y, file=blog_file, sep="\n")
}

