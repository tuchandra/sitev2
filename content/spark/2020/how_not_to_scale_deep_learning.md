+++
title = "How (not) to scale deep learning in 6 easy steps"
date = 2020-06-24T14:00:00
draft = false
categories = ["spark"]
+++

The last talk of the morning session talked about common problems scaling ML and DL models: common pitfalls, things that people try too early (more hardware), and what to do instead.

<!--more-->

How many of us, Owen asks, have stared at our terminal hoping that our model didn't break? Or logged onto a VM every few hours to check on the loss? And then had an instinct to throw more hardware at the problem? Yeah. Not good.

(Note: this talk is about tuning an existing architecture for performance, and getting it to run as fast as it can instead of wasting your time. Not about deciding between architectures.)

**Model setup**: 256-image classification, using a transfer learning setup with an existing image classifier and a fully connected layer or two to fit our purposes. Using TF / Keras on Databricks.

## Advice
**(1) Use a GPU**: which is kind of tip zero, but definitely use one. Start with a small GPU, and work in memory if you can early on (take a sample of your data if you have to). He gives an example of classical overfitting, where after training a model for an hour we saw 90% training accuracy but 70% test. What a waste of time!

**(2) Use early stopping**: use a validation set to figure out when to stop training (when loss stops going down on that set). In Keras, that just means adding a callback function, and in this example it gave the same results in just 14 epochs.

Epochs, by the way, end up being arbitrary: the number matters as a unit of training, but they aren't themselves a parameter to tune (especially if you use early stopping).

**(3) Max out the GPU with larger batches**: inspect the GPU utilization, to make sure you can squeeze out as much performance as possible. You can try increasing the learning rate, too; a N-fold increase on batch size is roughly a sqrt(N)-fold increase in the learning rate. 

**(4) Use Petastorm to read large data**: Petastorm is an open source project from Uber, which is a "parquet to deep learning dataset" streaming framework. Its primary use is to feed remote data to your training data.

In this case study, using Petastorm to stream their full dataset used 10x more data, and led to a better model, but it was 11x slower. A step after this is to use larger GPUs, if available.

**(5) Use multiple GPUs and Horovod**: do this *after* everything above; don't just throw more hardware at the problem immediately. If you use the native multi-GPU support in Keras, you won't see anywhere near a linear speedup in the number of GPUs. Horovod can help with this, because it uses a faster gradient sharing algorithm to share gradients across devices.

In this case, using Horovod got the same performance with 8 GPUS and 10x more data as they had with a 10% sample of the data.

**(6) Use multiple machines**: ouch. No thanks. I don't anticipate being in a position where this matters to me, but you can use Horovod for this too.


## Closing thoughts
Look at your GPU utilization! Make sure that you're using it effectively, and increase your batch size if needed. Other tools can help you, but start simple. I'm reminded of [Andrej Karpathy's advice for training neural nets](http://karpathy.github.io/2019/04/25/recipe/), too.

This was great! The practical advice offered will be immediately applicable to me and a lot of folks I work with. 

