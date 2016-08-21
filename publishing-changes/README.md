# Tutorial: Making Changes on the Permanent Web

These Lessons are tested with go-ipfs version 0.4.3-rc1. _Please update this file on github to reflect any other versions that have been tested._

## Prerequisites

## Learning Objectives
After doing this Lesson you will be able to
* Update Files on IPFS using IPNS
* Explain how version histories of files appear on IPFS
* Explain why IPFS is called the Permanent Web
* Track an entire website using IPFS and IPNS as it changes over time

## Key Concepts
* IPNS
* The Permanent Web

## Conceptual Framework

Normally, updating content means replacing a file - for instance, if I update a blog post, then people will see the edited file, and not the new one.
However, with IPFS, both verisons of the file will be accessible in the network. It's not a matter of replacing: you add the new one, too. This raises the question: how do we actually update our links, so that people will see the new version of a file? They can't go to the file's location, because IPFS locates files by looking for their hashes (that's what content-addressed means). So, you need to have a way of pointing people to the new hash easily.

The trick is to add new the content, and then update a pointer to that content. So, there needs to be a way of having a mutable pointer.

This is where IPNS comes in, the InterPlanetary Naming System (Name Service?). IPNS is a simple service that uses your peer ID to point to a particular hash. This hash can change, but your peer ID doesn't. That means that you can point to content in IPFS that may also change, and people can still access it without needing to know the new hash before hand.

**Author Question**: Does IPNS point to a constant hash that is in your config, or does it just use your peerId? Does your IPNS hash ever change?

## Lessons

1. If you have not already done it, follow the Lesson to **[Add a file to IPFS](/files-on-ipfs/lessons/1-add-and-retrieve-files.md)**
2. Set up IPNS on your node
3. Create an IPNS entry that points to your file
4. Modify your File and add the modified version to IPFS
5. Update the IPNS entry to point to the new version
Advanced:
7. add multiple files (ie. an entire website) to IPFS
8. Use IPNS to link to the entire website, or any file in the website

## Notes

From IRC
```
??. Use the files API.

15:14:11 <•Kubuxu> you are limited to one IPNS per node
15:14:18 <•Kubuxu> but you can have directories in IPNS
15:14:26 <•Kubuxu> combine it with files API
15:15:19 <•Kubuxu> ipfs files mkdir /public
15:15:46 <•Kubuxu> ipfs files cp /ipfs/$HASH_OF_PAPER /public/my-faviourite-paper.pdf
15:16:16 <•Kubuxu> ipfs name publish $(ipfs files stat --hash /public)
15:16:41 ⇐ jaboja quit (~jaboja@2a00:f41:3875:fd4b:de85:deff:fe55:967a) Ping timeout: 264 seconds
15:16:42 <•Kubuxu> you can reference your paper with: /ipns/$PEERID/my-faviourite-paper.pdf
15:16:50 <•Kubuxu> and you can have many more files in there
```
