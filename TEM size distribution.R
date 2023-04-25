library(ggplot2)
tem <- read.csv(file = ('TEM size distribution.csv'))
cutem <- strtoi(tem$X.1[5:10])
agtem <- strtoi(tem$X.4[2:6])
sizecu<- tem$AgNP[5:10]
sizeag <- tem$CuNP[2:6]

tem_data <- data.frame(NPs = c(rep("AgNPs",5),rep("CuNPs",6)),
                      size = c(sizeag,sizecu),
                      per_freq = c(agtem,cutem))


tem_plot <- ggplot(tem_data, aes(size, per_freq)) +
  geom_bar(aes(fill = NPs), stat = "identity", show.legend = FALSE, color = "black") +
  facet_wrap(~ NPs, scales = "free_x")+
  labs(x = "Size (nm)", y = "Frequency %")+
  scale_y_continuous(limits = c(0,60), expand = c(0, 0)) +
  scale_fill_manual(values = c("red","red"))


tem_plot + theme(axis.ticks.x.bottom = element_line(), #addticks to the bottom
              panel.background = element_blank(),   #remove panelbackground
              strip.background = element_blank(),   #remove strip (3headlines) background
              strip.text = element_text(size = 32), #adjust strip text size
              panel.border = element_rect(fill = NA), #add panels borders without fill color
              axis.title = element_text(color = "black", size = 32), #set the color and size of axis title
              axis.text = element_text(face = "bold",size = 16),  #set axis label size
              panel.grid = element_line(color = "grey", linetype = 2)) #set gridlines color to grey and the line type to dashed

ggsave(filename = "tem_size_dist.tiff", width = 16, height = 9, device='tiff', dpi=600, compression = "lzw")






# tiff("AgNP_TEM.tiff", units="in", width=12, height=8, res=300, bg='transparent')
# barplot(agtem,width = 0.5,main = 'AgNP ', space = 0.1, col = 'red',  ylab = 'Frequency (%)'
#         ,xlab = 'Size (nm)', axes = TRUE, names.arg = sizeag,
#         ylim = c(0,60), font.main = 6, cex.main = 2.8, font.axis = 6 ,cex.axis = 1.7,
#         cex.lab = 1.5, font.lab = 6, cex.names = 1.7)
# #dev.off()
# #tiff("CuNP_TEM.tiff", units="in", width=12, height=8, res=300, bg='transparent')
# barplot(cutem,width = 0.5,,main = 'CuNP ', space = 0.1, col = 'red',  ylab = 'Frequency (%)'
#         ,xlab = 'Size (nm)', axes = TRUE, names.arg = sizecu,
#         ylim = c(0,40), font.main = 6, cex.main = 2.8, font.axis = 6 ,cex.axis = 1.7,
#         cex.lab = 1.5, font.lab = 6, cex.names = 1.7)
#dev.off()