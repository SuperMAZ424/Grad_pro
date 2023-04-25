names <- c('AgNP', 'CuNP', 'Ag-Cu Nanocomposite', '50:50 AgNP & CuNP')
colors <- c('#ffff99','#33ccff','#ff9933','#003399')
DD1080 <- c(24, 14, 20, 22)
barplot(DD1080,ylim = c(0,30),main = 'Bacillus cereus', col= colors, names.arg = names,
        xlab = 'Nanoparticles', ylab = 'Inhibition zone diameter (mm)')

DD19420 <- c(20, 15, 16, 18)
barplot(DD19420,ylim = c(0,30), col= colors, main = 'Mycobacterium smegmatis', names.arg = names,
        xlab = 'Nanoparticles', ylab = 'Inhibition zone diameter (mm)')

DD6538 <- c(22, 14, 15, 17)
barplot(DD6538,ylim = c(0,30), col= colors, main = 'Staphylococcus aureus', names.arg = names,
        xlab = 'Nanoparticles', ylab = 'Inhibition zone diameter (mm)')

DD10145 <- c(30, 9, 23, 30)
barplot(DD10145,ylim = c(0,30), col= colors, main = 'Pseudomonas aeruginosa', names.arg = names,
        xlab = 'Nanoparticles', ylab = 'Inhibition zone diameter (mm)')

MIC1080 <- c(20, 50, 20, 13)
barplot(MIC1080,ylim = c(0,55), col= colors, main = 'Bacillus cereus', names.arg = names,
        xlab = 'Nanoparticles', ylab = 'MIC (µg/ml)')


MIC10145 <- c(10, 40, 20, 7)
barplot(MIC10145,ylim = c(0,45), col= colors, main = 'Pseudomonas aeruginosa', names.arg = names,
        xlab = 'Nanoparticles', ylab = 'MIC (µg/ml)')

MIC19420 <- c(10, 50, 20, 8)
barplot(MIC19420,ylim = c(0,55), col= colors, main = 'Mycobacterium smegmatis', names.arg = names,
        xlab = 'Nanoparticles', ylab = 'MIC (µg/ml)')

MIC6538 <- c(20, 80, 50, 20)
par(mar = c(5,8,3,10))
barplot(MIC6538,ylim = c(0,80), col= colors, main = 'Staphylococcus aureus', names.arg = names,
        xlab = 'Nanoparticles', ylab = 'MIC (µg/ml)')

MICcan <- c(8, 15, 8, 8)

barplot(MICcan,ylim = c(0,18), col= colors, main = 'Candida albicans', names.arg = names,
        xlab = 'Nanoparticles', ylab = 'MIC (µg/ml)')

DDcan <- c(12, 11, 11, 10)
barplot(DDcan,ylim = c(0,15), col= colors, names.arg = names, main = 'Candida albicans',
        xlab = 'Nanoparticles', ylab = 'Inhibition zone diameter (mm)')
#Dr. sayed results
#names <- c('Ag', 'Cu', 'Mix', 'Comb')
#colors <- c('brown','green','blue','red')
#DD1080 <- c(27, 14, 20, 22)
#barplot(DD1080,ylim = c(0,30), col= colors, main = '1080 disc diffusion', names.arg = names)

#DD19420 <- c(17, 19, 18, 17)
#barplot(DD19420,ylim = c(0,30), col= colors, main = '19420 disc diffusion', names.arg = names)

#DD6538 <- c(25, 16, 16, 14)
#barplot(DD6538,ylim = c(0,30), col= colors, main = '6538 disc diffusion', names.arg = names)

#DD10145 <- c(30, 12, 30, 22)
#barplot(DD10145,ylim = c(0,30), col= colors, main = '10145 disc diffusion', names.arg = names)

