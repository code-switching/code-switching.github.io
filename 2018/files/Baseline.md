---
layout: page
title: Baseline system
permalink: /2018/files/baseline.html
---

---
# NER Baseline
---

The baseline system for the CALCS NER shared 
task uses a recurrent neural network as follows:

### Preprocessing

1. Replace all URLs with the token \<URL\>
2. Replace all the usernames with the token \<USR\>


### Model architecture

1. Randomly initialized embedding vectors of 200 dimensions.
2. Forward LSTM wrapped with dropout technique (200 hidden units).
3. Backward LSTM wrapped with dropout technique (200 hidden units). 
4. Concatenation of both LSTM directions.
5. Softmax layer to output the label probabilities.
6. Adam optimizer.

### Settings and Experiments

1. Learning rate: 0.01
2. Learning rate decay: `2^0.5` (`lr /= 1 + epoch * lrdecay`)  
2. Epochs: 5
3. Batch size: 64
4. Dropout probability: 0.5




  