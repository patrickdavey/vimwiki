ANYWAYS.

Firstly a few of the promised resources:
Here's what I presented: https://docs.google.com/presentation/d/1a2RsW1OBdqiMoShAEKzjKwcXIMyioydPaq8MPuQTdV4/edit#slide=id.g5d194e81e7_0_65
The course I mentioned is CS231, here: http://cs231n.stanford.edu/
Tensorflow has some pretty polished tutorials now, here: https://www.tensorflow.org/learn
TensorFlowTensorFlow
Introduction to TensorFlow  |  TensorFlow(17 kB)
https://www.tensorflow.org/images/tf_logo_social.png
The cool kids are increasingly using pytorch. I've barely touched it. If I was planning to do something with the intention of applying it in a production system I'd definitely use TF at this stage because Google have invested a lot in making it easy to work with, especially in GCloud, but pytorch is definitely on my to-play-with list. https://pytorch.org/get-started/locally/
pytorch.orgpytorch.org
PyTorch
An open source deep learning platform that provides a seamless path from research prototyping to production deployment.(23 kB)
https://pytorch.org/assets/images/pytorch-logo.png
As I mentioned, for fairly run-of-the-mill problems there are increasingly batteries-included options. Googles offering is AutoML (I think AzureML has something similarish). https://cloud.google.com/automl/ I've not tried it, but would be pretty tempted if I had a suitable application. It's not going to drive your car at this stage though.
Google CloudGoogle Cloud
Cloud AutoML - Custom Machine Learning Models  |  Google Cloud
Cloud AutoML helps you easily build high quality custom machine learning models with limited machine learning expertise needed.
Onto your several great questions!
When you see neural networks doing mario or driving virtual cars or some other function over time, how does that fit in with the loss function? We only really looked at a static set of inputs -> static outputs and then had a simple loss function based on the static output. If you are e.g. playing mario, are your inputs dynamic wrt time, and your likewise your outputs, and then you calculate the loss function after the entire ‘simulation’ has run? I suppose the loss function can be only indirectly related to your outputs?
There's a great blog post here, also from Andrej Karpathy, which gives some insights into several of these points: http://karpathy.github.io/2016/05/31/rl/
karpathy.github.io
Deep Reinforcement Learning: Pong from Pixels
Musings of a Computer Scientist.
As you observe, with mario your loss function is probably linked to some final state outcome (like 'did I finish the level' or 'how much health did I have at the end of the level' or 'how many points did I get'). The link between that and any action at a particular point during the level can be very weak, even when the causal relationship is extremely strong.
Having to take an action then wait ages to see if it pays off (and taking thousands of other actions as you go) is referred to as delayed reward.
The problem of figuring out WHICH thing you did led to a given eventual reward (/loss) is referred to as 'credit assignment'.
Nick Butcher  It's also totally infeasible for most applications to plan based on simulation along multiple possible paths to a terminal state on each - similarly for training. This means that to succeed you need to be able to evaluate the loss/reward of intermediate states (e.g. "I've got to a good position in this chess game" rather than "I've got to a forced checkmate"). This is similar to what we do playing chess - or at least what I do. We can't roll out more than a few moves down the track, so we score based on those moves (pieces lost, pieces taken, positional advantage) and use that as a proxy for merit. This was where the application of neural networks actually is in AlphaGo and the AlphaGoForChessThing; they use a trained network to score intermediate board positions, and hence guide the exploration of a game tree. The alphago paper is a really good explanation.
Expanding on this, when you move beyond categorization and winning go, how do you come up with a loss function for less binary outcomes that aren’t static or time bound e.g. decision making in self-driving vehicles?
The neural network output doesn't have to be 'binary', that's just a good way to interpret it for single-entity classifiers.
For the self driving car example, you could have several outputs which were e.g. Accelerator depression as a float, Brake depression as a float, and Steering wheel angle as a float.
Your loss function (assuming a supervised learning approach where you have a bunch of input datasets and associated examples of what you want the outputs to be) could then be the difference between each of those example target outputs and the actual outputs your network gives - again, you train your network to minimise that loss to zero, and if you succeed then you've got a network that "drives" like your training model.
Nick Butcher  Which brings us to your last question:
It seems like the success of the entire neural network hinges on the quality of your loss function.
Yup!!! Much AI dystopic fiction is basically well-intentioned-loss-functions-gone-wrong. The more near term risk is pretty dumb limited AI being given control over conventional weapons, but for strongAI the bad loss function stuff is at least as scary. Nick Bostroms 'Superintelligence' is a pretty good book on the topic. 'Friendship is Optimal' (recommended to me by @aupajo initially I think) is also good, albeit less rigorous :slightly_smiling_face:
Coming up with a good loss function for a terminal state for a non-trivial scenario is generally really hard. Coming up with a good loss function for an intermediate state is even harder, because not only do you have to get the loss function right, you're also relying on your intuition about what intermediate states are likely to lead to the terminal state you want!
It becomes a lot easier in the strict supervised learning case where you can just show the algorithm what you mean ("when you see x, do y"), but that's vulnerable to the issues I mentioned in the talk (among others), and has the extremely large added downside that you need to collect a ton of annotated examples.
Really a conversation for more beers. It's a super interesting field though - what's already possible is incredible and it's only going to get more so (unless everything goes badly wrong...)
