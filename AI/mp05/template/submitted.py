import torch
import torch.nn as nn


def create_sequential_layers():
    """
    Task: Create neural net layers using nn.Sequential.

    Requirements: Return an nn.Sequential object, which contains:
        1. a linear layer (fully connected) with 2 input features and 3 output features,
        2. a sigmoid activation layer,
        3. a linear layer with 3 input features and 5 output features.
    """

    block = torch.nn.Sequential(        # Create sequential block with two linear transformations (2,3) and (3,5) and sigmoid in sequence 
        torch.nn.Linear(2,3),
        torch.nn.Sigmoid(),
        torch.nn.Linear(3,5)
    )

    return block    

    raise NotImplementedError("You need to write this part!")


def create_loss_function():
    """
    Task: Create a loss function using nn module.

    Requirements: Return a loss function from the nn module that is suitable for
    multi-class classification.
    """
    return torch.nn.BCELoss()       # Used for multiclassification
    

    raise NotImplementedError("You need to write this part!")


class NeuralNet(torch.nn.Module):
    def __init__(self):
        """
        Initialize your neural network here.
        """
        super().__init__()
        ################# Your Code Starts Here #################
        self.block = torch.nn.Sequential(
            torch.nn.Linear(2883,70),
            torch.nn.ReLU(),
            torch.nn.Dropout(p=0.2),
            torch.nn.Linear(70,100)
        )

        # self.hidden = torch.nn.Linear(2883, 64)  # input has 2883 values
        # self.relu = torch.nn.ReLU()  # activation function
        # self.output = torch.nn.Linear(64, 100)  # output has 100 values (batch)



        # raise NotImplementedError("You need to write this part!")
        ################## Your Code Ends here ##################

    def forward(self, x):
        """
        Perform a forward pass through your neural net.

        Parameters:
            x:      an (N, input_size) tensor, where N is arbitrary.

        Outputs:
            y:      an (N, output_size) tensor of output from the network
        """
        ################# Your Code Starts Here #################

        return self.block(x)


        raise NotImplementedError("You need to write this part!")
        return y
        ################## Your Code Ends here ##################


def train(train_dataloader, epochs):
    """
    The autograder will call this function and compute the accuracy of the returned model.

    Parameters:
        train_dataloader:   a dataloader for the training set and labels
        test_dataloader:    a dataloader for the testing set and labels
        epochs:             the number of times to iterate over the training set

    Outputs:
        model:              trained model
    """

    ################# Your Code Starts Here #################

    """
    Implement backward propagation and gradient descent here.
    """

    # Create an instance of NeuralNet, a loss function, and an optimizer

   

    model = NeuralNet()
    loss_fn = torch.nn.CrossEntropyLoss()
    optimizer = torch.optim.SGD(model.parameters(), lr=0.01,weight_decay=0.01)

    
    for epoch in range(epochs):                     # Go through batch range and follow algorithm
        for features, labels in train_dataloader:
            y_pred = model(features)
            loss = loss_fn(y_pred,labels)
            optimizer.zero_grad()

            loss.backward()
            optimizer.step()

    model.eval()

    from sklearn.metrics import accuracy_score, classification_report

    # Initialize lists for storing true labels and predicted labels
    true_labels = []
    predicted_labels = []

    # Iterate over the test data
    with torch.no_grad():
        for inputs, labels in train_dataloader:
            # Forward pass
            outputs = model(inputs)

            # Convert model outputs to predicted labels
            _, predicted = torch.max(outputs, 1)

            # Store true and predicted labels
            true_labels.extend(labels.cpu().numpy())
            predicted_labels.extend(predicted.cpu().numpy())

    # Calculate accuracy
    accuracy = accuracy_score(true_labels, predicted_labels)

    # Print detailed classification report
    report = classification_report(true_labels, predicted_labels)

    print(accuracy, report)

    return model 



    # raise NotImplementedError("You need to write this part!")
    ################## Your Code Ends here ##################

