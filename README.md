# The IPFS Primer

This primer contains a series of tutorials explaining IPFS, Merkle Trees and the Decentralized Web. It's written and maintained as a [gitbook](https://www.gitbook.com/about) so people can read it in many formats.

The GitHub repository for this book is at https://github.com/ipfs-shipyard/ipfs-primer.

# Getting Help

During these tutorials, if you have any questions feel free to ask them in [the IPFS forums](https://discuss.ipfs.io) or in [the #ipfs channel on chat.freenode.net](irc://chat.freenode.net/%23ipfs). We have a large, active community who use these venues as our main places to seek support and to provide it.

## Tutorials

The primer contains tutorials about

 1. [Downloading and Installing IPFS](install-ipfs/README.md)
 2. [Files on IPFS](files-on-ipfs/README.md)
 3. [Going Online - Joining the Distributed Web](going-online/README.md)
 4. [Interacting with the Classical (HTTP) Web](classical-web/README.md)
 5. [The Myriad ways to Access and Distribute IPFS Content](avenues-for-access/README.md)
 6. [Making Changes on the Permanent Web](publishing-changes/README.md)
 7. [Merkle Trees and the IPFS DAG](ipfs-dag/README.md)
 8. [Dynamic Content on IPFS](dynamic-content/README.md)

 For a full list of tutorials, look at the [Table of Contents](SUMMARY.md).

## Concepts

* Cryptographic Hashes and Content Addressability
* Authenticated Graphs
* Turning Files into Trees
* Turning any Data into Trees
* Publishing hashes on the DHT
* Getting data from the Peer to Peer Network
* Immutability: "Changes" as _additions_ to the tree
* CRDTs
* Pubsub
* Authenticated Streams (with pubsub)

## Format

Each tutorial is a set of *lessons* that all use a format inspired by the [Railsbridge Curriculum](http://curriculum.railsbridge.org/intro-to-rails/). Each lesson declares a set of *Goals*, or [learning objectives](http://edglossary.org/learning-objectives/), then lists the *Steps*, or activities, and finally provides an *Explanation* that reviews what you've done and connects those activities to the lesson's stated Goals. The format for each lesson looks like this:

![Sample of Railsbridge Lesson format](/images/railsbridge-format.png)

## Note for Contributors

For a concise explanation of Learning Objectives (which we're calling _Goals_ in this book), read UC Denver's [Assessment & Instructional Alignment Tutorial](http://www.ucdenver.edu/faculty_staff/faculty/center-for-faculty-development/Documents/tutorials/Assessment/module3/index.htm). Try to make your learning objectives [Specific, observable and measurable](http://www.ucdenver.edu/faculty_staff/faculty/center-for-faculty-development/Documents/tutorials/Assessment/module3/good_objectives.htm) and heed their tip to use the list of verbs in the [taxonomy table worksheet](http://www.ucdenver.edu/faculty_staff/faculty/center-for-faculty-development/Documents/tutorials/Assessment/documents/examples_verbs_cognitive_process_level.pdf) to help you choose observable behaviors for your course learning objectives.

To build the HTML, PDF, epub and mobi versions of the book with one command, run `./build-book.sh`

# Contributors

This primer was created by @flyingzumwalt. The contents of these tutorials were initially pulled from documentation in the first-generation documentation homed on the IPFS website and the (now-inactive) IPFS examples git repository. (Find them in their new homes on [docs.ipfs.io](https://docs.ipfs.io), particularly the ["Usage ideas and examples"](https://docs.ipfs.io/concepts/usage-ideas-examples/) section.)

Contributors to those original docs included
* @whyrusleeping
* @jbenet
* @lgierth
* @lynnandtonic
* @wraithgar
* @adambrault
* @donothesitate
* @djdv
plus a long list of [contributors](https://github.com/ipfs/examples/network/members) to the original examples repository
