library(magick)

img.orig <- image_read(rep('C:\\Development\\github\\blog\\themes\\hugo-cactus-theme\\static\\images\\avatar.png', 5))
sizes <- 8 * c(2, 3, 4, 6, 8)
img.sizes <- sprintf("%dx%d", sizes, sizes)
img.sizes

dir <- tempfile()
dir.create(dir)
files <- file.path(dir, sprintf("favicons-%s.png", sizes))

img.resize <- lapply(img.sizes, image_resize, image=img.orig)
invisible(Map(image_write, img.resize, files))
list.files(dir)

imgs <- image_read(files)

ico <- image_convert(imgs, 'ico')
image_write(ico, 'C:\\Development\\github\\blog\\themes\\hugo-cactus-theme\\static\\images\\favicon2.ico')
unlink(dir, recursive=TRUE)

# Now update C:\Development\github\blog\themes\hugo-cactus-theme\layouts\partials\head.html to include favicon2.ico