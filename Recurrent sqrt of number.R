library("neuralnet")

#Going to create a neural network to perform square root for an input
?neuralnet

trainingInput <- as.data.frame(runif(50, min=0, max=100))
trainingInput

trainingOutput <- sqrt(trainingInput)
trainingOutput

trainingData <- cbind(trainingInput, trainingOutput)
colnames(trainingData) <- c("Input", "Output")
View(trainingData)

#Train the neural network
net.sqrt <- neuralnet(Output~Input, trainingData, hidden=10, threshold=0.01)
print(net.sqrt)
plot(net.sqrt)

#Test the neural network on some training data
testdata <- as.data.frame((1 : 10) ^ 2)
net.results <- compute(net.sqrt, testdata)

#Properties of net.sqrt
print(net.results$net.result)

#Lets display a better version of results
cleanoutput <- cbind(testdata, sqrt(testdata), as.data.frame(net.results$net.result))

colnames(cleanoutput) <- c("Input", "Expected O/P", "NeuralNet O/P")

print(cleanoutput)