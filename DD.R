names <- c('Ag', 'Cu', 'Mix', 'Comb')
colors <- c('brown','green','blue','red')
bacteria <- c('1080', '19420', '6538', '10145')
DD1080 <- c(27, 14, 20, 22)

DD19420 <- c(17, 19, 18, 17)

DD6538 <- c(25, 16, 16, 14)

DD10145 <- c(30, 12, 30, 22)

DD_df <- data.frame(group = rep(names, 4),
                    bacs = c(rep('1080', 4), rep('19420',4), rep('6538',4), rep('10145',4)),
                    DD_res = c(DD1080, DD19420, DD6538, DD10145)
                    )


ggplot(DD_df, aes(x = group, y = DD_res)) +
  geom_bar(aes(fill = group) ,stat = "identity", show.legend = FALSE) +
  facet_wrap(~ bacs, scales = "free")+
  labs(y = "Inhibition zone diameter (mm)")+
  scale_y_continuous(limits= c(0, 35),expand = c(0,0))+
  scale_fill_manual(values = colors)+
  theme(axis.title.x = element_blank(), strip.background = element_blank(),
        panel.background = element_blank(), panel.border = element_rect(fill = NA),
        panel.grid = element_line(color = "grey", linetype = 1),
        panel.grid.major.x = element_blank())

# barplot(DD1080,ylim = c(0,30), col= colors, main = '1080 disc diffusion', names.arg = names)
# barplot(DD19420,ylim = c(0,30), col= colors, main = '19420 disc diffusion', names.arg = names)
# barplot(DD6538,ylim = c(0,30), col= colors, main = '6538 disc diffusion', names.arg = names)
# barplot(DD10145,ylim = c(0,30), col= colors, main = '10145 disc diffusion', names.arg = names)
