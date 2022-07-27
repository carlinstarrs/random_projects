library("magick")
library("tidyverse")
library("grid")
library("gridExtra")
# library("extrafont")
# remotes::install_version("Rttf2pt1", version = "1.3.8")

# font_import(path = "C:/Users/Carlin/Documents/Holtwood_One_SC/")
# font_import(path = "C:/Users/Carlin/Documents/Great_Vibes/")
windowsFonts(holtwood = windowsFont("Holtwood One SC"))
windowsFonts(greatvibes = windowsFont("Great Vibes"))

img <- image_read("Dashleigh+Candy+Buffet+JPG (1).jpg") %>% image_rotate(90)

title <- "BUNSTA VINEYARDS"

label <- paste("2021 Lemon Wine", "'SKEETER PEE'", "10%ish ABV", sep = "\n")

motto <- "Grown in the Heart of the Bay"

decoration <- image_read("decoration_test.png")

grid.newpage()
bg <- rasterGrob(img, x = 0.5, y = 0.5)

x1 <- 0.18
xadd <- 0.325

y1 <- c(0.91, 0.875, 0.82, 0.75, 0.725) + 0.015
yadd <- 0.325

g1 <- gList(rasterGrob(decoration, x = x1, y = y1[1], width = 0.15),
            textGrob(title, x = x1, y = y1[2], gp = gpar(fontfamily = "holtwood", fontsize = 15, fontface = "bold")),
            textGrob(label, x = x1, y = y1[3], gp = gpar(fontfamily = "holtwood", fontsize = 11, fontface = "bold")),
            textGrob(motto, x= x1, y = y1[4], gp = gpar(fontfamily = "greatvibes", fontsize = 16, fontface = "bold")),
            rasterGrob(decoration, x = x1, y = y1[5], width = 0.15))

g2 <- gList(rasterGrob(decoration, x = x1 + xadd, y = y1[1], width = 0.15),
            textGrob(title, x = x1 + xadd, y = y1[2], gp = gpar(fontfamily = "holtwood", fontsize = 15, fontface = "bold")),
            textGrob(label, x = x1 + xadd, y = y1[3], gp = gpar(fontfamily = "holtwood", fontsize = 11, fontface = "bold")),
            textGrob(motto, x= x1 + xadd, y = y1[4], gp = gpar(fontfamily = "greatvibes", fontsize = 16, fontface = "bold")),
            rasterGrob(decoration, x = x1 + xadd, y = y1[5], width = 0.15))

g3 <- gList(rasterGrob(decoration, x = x1 + xadd * 2, y = y1[1], width = 0.15),
            textGrob(title, x = x1 + xadd * 2, y = y1[2], gp = gpar(fontfamily = "holtwood", fontsize = 15, fontface = "bold")),
            textGrob(label, x = x1 + xadd * 2, y = y1[3], gp = gpar(fontfamily = "holtwood", fontsize = 11, fontface = "bold")),
            textGrob(motto, x= x1 + xadd * 2, y = y1[4], gp = gpar(fontfamily = "greatvibes", fontsize = 16, fontface = "bold")),
            rasterGrob(decoration, x = x1 + xadd * 2, y = y1[5], width = 0.15))
########
g4 <- gList(rasterGrob(decoration, x = x1, y = y1[1] - yadd, width = 0.15),
            textGrob(title, x = x1, y = y1[2] - yadd, gp = gpar(fontfamily = "holtwood", fontsize = 15, fontface = "bold")),
            textGrob(label, x = x1, y = y1[3] - yadd, gp = gpar(fontfamily = "holtwood", fontsize = 11, fontface = "bold")),
            textGrob(motto, x= x1, y = y1[4] - yadd, gp = gpar(fontfamily = "greatvibes", fontsize = 16, fontface = "bold")),
            rasterGrob(decoration, x = x1, y = y1[5] - yadd, width = 0.15))

g5 <- gList(rasterGrob(decoration, x = x1 + xadd, y = y1[1] - yadd, width = 0.15),
            textGrob(title, x = x1 + xadd, y = y1[2] - yadd, gp = gpar(fontfamily = "holtwood", fontsize = 15, fontface = "bold")),
            textGrob(label, x = x1 + xadd, y = y1[3] - yadd, gp = gpar(fontfamily = "holtwood", fontsize = 11, fontface = "bold")),
            textGrob(motto, x= x1 + xadd, y = y1[4] - yadd, gp = gpar(fontfamily = "greatvibes", fontsize = 16, fontface = "bold")),
            rasterGrob(decoration, x = x1 + xadd, y = y1[5] - yadd, width = 0.15))

g6 <- gList(rasterGrob(decoration, x = x1 + xadd * 2, y = y1[1] - yadd, width = 0.15),
            textGrob(title, x = x1 + xadd * 2, y = y1[2] - yadd, gp = gpar(fontfamily = "holtwood", fontsize = 15, fontface = "bold")),
            textGrob(label, x = x1 + xadd * 2, y = y1[3] - yadd, gp = gpar(fontfamily = "holtwood", fontsize = 11, fontface = "bold")),
            textGrob(motto, x= x1 + xadd * 2, y = y1[4] - yadd, gp = gpar(fontfamily = "greatvibes", fontsize = 16, fontface = "bold")),
            rasterGrob(decoration, x = x1 + xadd * 2, y = y1[5] - yadd, width = 0.15))

########
g7 <- gList(rasterGrob(decoration, x = x1, y = y1[1] - yadd * 2, width = 0.15),
            textGrob(title, x = x1, y = y1[2] - yadd * 2, gp = gpar(fontfamily = "holtwood", fontsize = 15, fontface = "bold")),
            textGrob(label, x = x1, y = y1[3] - yadd * 2, gp = gpar(fontfamily = "holtwood", fontsize = 11, fontface = "bold")),
            textGrob(motto, x= x1, y = y1[4] - yadd * 2, gp = gpar(fontfamily = "greatvibes", fontsize = 16, fontface = "bold")),
            rasterGrob(decoration, x = x1, y = y1[5] - yadd * 2, width = 0.15))

g8 <- gList(rasterGrob(decoration, x = x1 + xadd, y = y1[1] - yadd * 2, width = 0.15),
            textGrob(title, x = x1 + xadd, y = y1[2] - yadd * 2, gp = gpar(fontfamily = "holtwood", fontsize = 15, fontface = "bold")),
            textGrob(label, x = x1 + xadd, y = y1[3] - yadd * 2, gp = gpar(fontfamily = "holtwood", fontsize = 11, fontface = "bold")),
            textGrob(motto, x= x1 + xadd, y = y1[4] - yadd * 2, gp = gpar(fontfamily = "greatvibes", fontsize = 16, fontface = "bold")),
            rasterGrob(decoration, x = x1 + xadd, y = y1[5] - yadd * 2, width = 0.15))

g9 <- gList(rasterGrob(decoration, x = x1 + xadd * 2, y = y1[1] - yadd * 2, width = 0.15),
            textGrob(title, x = x1 + xadd * 2, y = y1[2] - yadd * 2, gp = gpar(fontfamily = "holtwood", fontsize = 15, fontface = "bold")),
            textGrob(label, x = x1 + xadd * 2, y = y1[3] - yadd * 2, gp = gpar(fontfamily = "holtwood", fontsize = 11, fontface = "bold")),
            textGrob(motto, x= x1 + xadd * 2, y = y1[4] - yadd * 2, gp = gpar(fontfamily = "greatvibes", fontsize = 16, fontface = "bold")),
            rasterGrob(decoration, x = x1 + xadd * 2, y = y1[5] - yadd * 2, width = 0.15))
gb <- gList(#bg, 
            g1, 
            g2,
            g3,
            g4,
            g5,
            g6,
            g7,
            g8,
            g9
            )

#grid.draw(gb)

ggsave(filename = "test.png", plot = gb, device = "png", width = 11, height = 8.5, unit = "in")
