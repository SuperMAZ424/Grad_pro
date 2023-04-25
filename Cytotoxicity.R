data <- read.csv(file = 'cyto.csv')
names2 <- c(expression('Ag/Cu'['a']), expression('Ag/Cu'['b']),  'CuNP', 'AgNP')
colors2 <- c('#990033','#000099','#009966','#330000')
x_axis_labels2 <- matrix(c('12.5 µg/ml','25 µg/ml','50 µg/ml','100 µg/ml'))
dat <- matrix(strtoi(c(data$X.2[3:6], data$X.3[3:6], data$X.1[3:6], data$X[3:6])),
              nrow = 4, ncol = 4, byrow = TRUE)
par(mar = c(6,7,2,2))

barplot(dat, main = 'BHK'  ,names.arg = x_axis_labels2
            , ylab = 'Cytotoxicity %',beside = TRUE, ylim = c(0,70),
            xlab = 'Concentration of nanoparticles (µg/ml)', col = colors2, font.main = 6, cex.main = 3, font.axis = 6 ,cex.axis = 1.7,
        cex.lab = 2.5, font.lab = 6, cex.names = 1.7)

legend('topleft', names2, cex = 1.2, fill = colors2, text.font = 6, bty = 'n')

