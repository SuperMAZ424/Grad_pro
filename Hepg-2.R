res<- read.csv(file = "cytotoxicity & anticancer.csv")

# Create the matrix of the values.\
test <- c(res$X.8[3:6])
x_axis_labels2 <- matrix(c('12.5 µg/ml','25 µg/ml','50 µg/ml','100 µg/ml'))
m2 <- rep(x_axis_labels, 4)
val2 <- matrix(strtoi(c(res$X.11[3:6],res$X.8[3:6],res$X.3[3:6],res$X.5[3:6])),  nrow = 4, ncol = 4, byrow = TRUE)
colors2 <- c('#990033','#000099','#330000','#009966')
names2 <- c(expression('Ag/Cu'['a']) ,expression('Ag/Cu'['b']), 'AgNP',  'CuNP')

# Create the bar chart
#tiff("HepG2.tiff", units="in", width=12, height=8, res=300)
par(mar=c(7,7,2,2))
barplot(val2, main = 'HepG-2'  ,names.arg = x_axis_labels2, beside = TRUE
        , width = 4, col = colors2, ylim = c(0, 80), ylab = 'Cell viability %',
        xlab = 'Concentration (µg/ml)', font.main = 6, cex.main = 3, font.axis = 6 ,cex.axis = 1.7,
        cex.lab = 2.5, font.lab = 6, cex.names = 1.7)
#,
#        ylab = "Inhibition zone diameter (mm)", width = 3,
#        col = colors), beside = TRUE, cex.names = 0.9, cex.axis = 0.9,
#ylim = c(0,15), space = c(0.2, 1.5), las = 2)
# Add the legend to the chart
legend("topright", names2, cex = 1, text.font = 6, fill = colors2, bty = 'n')

#dev.off()