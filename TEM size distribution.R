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
