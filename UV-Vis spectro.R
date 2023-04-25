library(ggplot2)
uv <- read.csv(file = 'UV-Vis spectro.csv')
cd <- uv$X.8[100:105]
#make the data curve smoother
smoothed1 <- smooth.spline(uv$Cu[150:850], uv$X.14[150:850])
smoothed2 <- smooth.spline(uv$mix[150:830],uv$X.19[150:830])
smoothed3 <- smooth.spline(uv$Ag.Dr..mansour[90:500], uv$X.8[90:500])
#create dataframe from wavelength and abs of single read
df <- data.frame(wavelength = smoothed3$x ,abs = smoothed3$y)
#plot the data 
plot(df$wavelength,df$abs, type = 'l', col = 'red'
     , xlim = c(300,600), ylim = c(0,1), ylab = 'Absorbance', xlab='Wavelength (nm)')
#add new lines to the existing plot
lines(smoothed1, col = 'blue')
lines(smoothed2, col = 'orange')
# add legend
legend(1, 1, legend = c('AgNP', 'CuNP', 'Mix' ), col = c('red', 'blue', 'orange'))
#draw with ggplot2
ggplot(df, aes(wavelength, abs)) + geom_line() + theme_classic()
