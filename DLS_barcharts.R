# Load the ggplot2 library
library(ggplot2)
# Create sample data
AgNP_num_dist <- c(1,5,19,26,23,15,5,3,1,0.7,0.2,0.1)
AgNP_x_axis <- seq(10, 120, by = 10)
AgNP <- data.frame(number = AgNP_num_dist, size = AgNP_x_axis)
Cu_x_axis <- seq(100, 230, by = 10)
Cu_num_dist <- c(2,3,3.5,3.9,4.1,4.8,5.2,6,7.5,8,6.5,4,3,2)
CuNP <- data.frame(number = Cu_num_dist, size = Cu_x_axis)
combination_x_axis <- seq(10, 190, by = 10)
combination_num_dist <- 
  c(1,2,5.5,7.5,9,12,13,12.5,10,7,4,3,2.5,2,1.5,1,1,0.5,0.5)
comb <- data.frame(number = combination_num_dist, size = combination_x_axis)
lablevalue <- as_labeller(c(AgNP="AgNPs",combination = "Ag/Cu[b]",CuNP="CuNP"), default = label_parsed)
  
# Create sample data
data2 <- data.frame(
  group = c(rep("AgNP",each = 12),rep("CuNP", each = 14),rep("combination", each = 19)),
  category = c(AgNP_x_axis, Cu_x_axis, combination_x_axis),
  value = c(AgNP_num_dist, Cu_num_dist, combination_num_dist))

# Create the barplots
plot1 <- ggplot(data2, aes(x = category, y = value, width =10)) + #width for the size of the bars
  geom_bar(aes(fill = group),stat = "identity", show.legend = FALSE, color = "black") + #color for the bar borders
  facet_wrap(.~ group, labeller = lablevalue, scales = "free_x") + #make multiple plots based on the groups number and set each x scale to be different according to each plot 
  labs(x = "Size (nm)", y = "Number %") + # set axes tiltles
  scale_x_continuous(breaks = seq(0,230,20), minor_breaks = seq(0,250,10),expand = c(0.01, 0)) + #breaks set the axis lebel positions, minor breaks add the gridswith the desired coords expand is mentioned below
  scale_y_continuous(limits = c(0, 27), expand = c(0, 0))+ #set y scale from 0 to 27 and give no spaces after and before the axis scale
  scale_fill_manual(values = c("red","red","red"))# make all bars have the same color



plot1 + theme(axis.ticks.x.bottom = element_line(), #addticks to the bottom
              panel.background = element_blank(),   #remove panelbackground
              strip.background = element_blank(),   #remove strip (3headlines) background
              strip.text = element_text(size = 22), #adjust strip text size
              panel.border = element_rect(fill = NA), #add panels borders without fill color
              axis.title = element_text(color = "black", size = 22), #set the color and size of axis title
              axis.text = element_text(size = 16, face = "bold"),  #set axis label size
              panel.grid = element_line(color = "grey", linetype = 2)) #set gridlines color to grey and the line type to dashed

ggsave(filename = "test3v2.tiff", width = 16, height = 9, device='tiff', dpi=600, compress = "lzw")
