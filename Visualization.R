#Define cars vector with 5 values
cars <- c(1, 3, 6, 4, 9)

#Graph the cars vector
plot(cars)

#Graph cars using blue points overlayed by a line
plot(cars, type="o", col="blue")    #o=overlapped

#Create a title with a red, bold/italic font
#col.main = title colour
title(main="Autos", col.main="red", font.main=4)

#Define 2 vectors
cars <- c(1, 3, 6, 4, 9)
trucks <- c(2, 5, 4, 5, 12)

#Graph cars using a y axis
plot(cars, type="o", col="blue", ylim=c(0,12))

#Graph trucks with red dashed line and square points
#pch = plot character
#lty = line type
lines(trucks, type="o", pch=22, lty=2, col="red")

#Create a title with a red, bold/italic font
title(main="Autos", col.main="red", font.main=4)

#Define 2 vectors
cars <- c(1, 3, 6, 4, 9)
trucks <- c(2, 5, 4, 5, 12)

# Calculate range from 0 to max
g_range <- range(0, cars, trucks)

#Graph autos using y axis that ranges from 0 to max value in cars or trucks vector. 
#Turn off axes and annotations (axis labels) so we can specify them ourselves.
plot(cars, type="o", col="blue", ylim=g_range, axes=FALSE, ann=FALSE)

#Make x axis using Mon-Fri labels
axis(1, at=1:5, lab=c("Mon","Tue","Wed","Thu","Fri"))

# Make y axis with horizontal labels that
#display ticks at every 4 marks. 4*0:g_range[2]
#is equivalent to c(0,4,8,12). las is labels
#are parallel (=0) or perpendicular(=2) to axis
axis(2, las=2, at=4*0:g_range[2])
# Create box around plot
box()
# Graph trucks with red dashed line and square points
lines(trucks, type="o", pch=22, lty=2, col="red")
# Create a title with a red, bold/italic font
title(main="Autos", col.main="red", font.main=4)
# Label the x and y axes with dark green text
title(xlab="Days", col.lab=rgb(0,0,0))
title(ylab="Total", col.lab=rgb(0.3,0.3,0))
# Create a legend at (1, g_range[2]) that is
#slightly smaller (cex) and uses the same line
#colors and points used by
# the actual plots
#cex is scaling of text and symbol
legend(1, g_range[2], c("cars","trucks"),
       cex=0.3,
       col=c("blue","red"), pch=21:22,
       lty=1:2);

#Let's start with a simple pie chart graphing the cars vector:
# Define cars vector with 5 values
cars <- c(1, 3, 6, 4, 9)
# Create a pie chart for cars
pie(cars)
#Now let's add a heading, change the colors, and define our own labels:
# Define cars vector with 5 values
cars <- c(1, 3, 6, 4, 9)

# Create a pie chart with defined heading and
# custom colors and labels
pie(cars, main="Cars", col=rainbow(length(cars)),
    labels=c("Mon","Tue","Wed","Thu","Fri"))

#############################
#Example
x=c(1, 2, 3, 4, 5)
y=c(3, 7, 8, 9, 12)
plot(x,y,type = "o", pch=25,lty=1, col="red")
title(main="Vector", col.main="Black", font.main=4)
#######################
a <- c(7,12,28,3,41)
barplot(a)