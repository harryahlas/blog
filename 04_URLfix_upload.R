# urlfix and upload
# Not neededas of 1/26/2020
library(RCurl)
setwd("D:\\Development\\github\\blog-bundle\\public\\")

blog_files_all <- list.files(getwd(),
                             #pattern=(".html"),
                             full.names=F,
                             recursive = TRUE)

# do not change this file
blog_files <- blog_files_all[blog_files_all != "URLfix_upload.R"]
#blog_files <- blog_files[grepl(blog_files,pattern = "/images/") != TRUE]
#blog_files <- blog_files[grepl(blog_files,pattern = "jpg|png|gif") != TRUE]

# Make files for server ---------------------------------------------------
# ##### I DO NT THINK THIS IS NEEDED ANYMORE
# bad_url_section <- "blogtest/blogtest/"
# good_url_section <- "blogtest/"
# 
# for(blog_file in blog_files) {
#   x <- readLines(blog_file)
#   y <- gsub(bad_url_section, good_url_section, x)
#   cat(y, file=blog_file, sep="\n")
# }
# 

# Reap --------------------------------------------------------------------
# (enter pw first)
# Note: prior to reap, make sure new folders are created

for (blog_file in blog_files_all) {
  print(blog_file)
  ftpUpload(blog_file,
            paste0("sftp://edemise:",pw,"@boron.he.net/home/edemise/public_html/harry.ahlas.com/",
                   blog_file),
            .opts = list(ftp.create.missing.dirs=TRUE)
  )
}

setwd("D:\\Development\\github\\blog-bundle\\")
# Do not run below --------------------------------------------------------


########################################
########################################
########################################
########################################

# Make files local --------------------------------------------------------
#server_url <- "http://earlydemise.com/blog/public"
#new_url <- "C:\\\\Development\\\\github\\\\blog\\\\public"
server_url <- "http://earlydemise.com/blog/public/"
new_url <- ""


for(blog_file in blog_files) {
  x <- readLines(blog_file)
  y <- gsub(server_url, new_url, x)
  cat(y, file=blog_file, sep="\n")
}

# Fix backwards slashes
server_url2 <- "http://earlydemise.com/blog/public\\"
new_url <- ""


for(blog_file in blog_files) {
  x <- readLines(blog_file)
  y <- gsub(server_url2, new_url, x, fixed = TRUE)
  cat(y, file=blog_file, sep="\n")
}


# Other replacements
old <- '<link href="i'
new <- '<link href="/i'
for(blog_file in blog_files) {
  x <- readLines(blog_file)
  y <- gsub(old, new, x, fixed = TRUE)
  cat(y, file=blog_file, sep="\n")
}



old <- '<link href="c'
new <- '<link href="/c'
for(blog_file in blog_files) {
  x <- readLines(blog_file)
  y <- gsub(old, new, x, fixed = TRUE)
  cat(y, file=blog_file, sep="\n")
}


old <- '<img src="i'
new <- '<img src="/i'
for(blog_file in blog_files) {
  x <- readLines(blog_file)
  y <- gsub(old, new, x, fixed = TRUE)
  cat(y, file=blog_file, sep="\n")
}



old <- '<a href="a'
new <- '<a href="/a'
for(blog_file in blog_files) {
  x <- readLines(blog_file)
  y <- gsub(old, new, x, fixed = TRUE)
  cat(y, file=blog_file, sep="\n")
}



old <- 'href="c'
new <- 'href="/c'
for(blog_file in blog_files) {
  x <- readLines(blog_file)
  y <- gsub(old, new, x, fixed = TRUE)
  cat(y, file=blog_file, sep="\n")
}

old <- 'href="i'
new <- 'href="/i'
for(blog_file in blog_files) {
  x <- readLines(blog_file)
  y <- gsub(old, new, x, fixed = TRUE)
  cat(y, file=blog_file, sep="\n")
}



old <- "href='c"
new <- "href='/c"
for(blog_file in blog_files) {
  x <- readLines(blog_file)
  y <- gsub(old, new, x, fixed = TRUE)
  cat(y, file=blog_file, sep="\n")
}


