# Lesson: Retrieve content from a Peer

This lesson shows how to use an IPFS node on your computer to request content from other peers on the network. Some of the underlying topics are covered in greater depth in the tutorials about [Files on IPFS](files-on-ipfs/README.md).

## Prerequisites
To do the steps in this lesson you must:
* Be familiar with using the command line
* [Install and Initialize IPFS](/install-ipfs/README.md) on your local machine

## Goals

After doing this Lesson you will be able to  
* Access any content through your local IPFS node using its command line interface

## Steps

### Step 1: Start the IPFS daemon

Start the IPFS daemon by running

```sh
$ ipfs daemon
```

If the daemon is not running, your IPFS node won't be able to retrieve content from other nodes on the network.

### Step 2: Read the content on the command line

You can use the command line to request content from your IPFS node. If the node does not have a copy of that content, it will attempt to find another peer node that does have the content. For example, the IPFS team have [published a snapshot of the turkish version of wikipedia](https://ipfs.io/blog/24-uncensorable-wikipedia/). The hash of that snapshot, which contains about 15GB of Turkish-language wikipedia pages, is `tr-wikipedia-ipfs`. We can use the command line to have your IPFS node read pages from that snapshot.

```
# get the article about "Peer to Peer"
ipfs cat tr-wikipedia-ipfs/wiki/Peer-to-peer.html > Peer-to-peer.html

# get a picture of Alexis de Tocqueville
ipfs cat tr-wikipedia-ipfs/m/Alexis_de_Tocqueville.jpg > Alexis_de_Tocqueville.jpg

# explore the articles in the snapshot
ipfs ls tr-wikipedia-ipfs/wiki/Anasayfa.html
```

If you're not familiar with the `ipfs cat` and `ipfs ls` commands they are explained in the [Tutorial about Files on IPFS](/files-on-ipfs/README.md)

## Explanation

You can use a local IPFS node to read content from the worldwide IPFS network. One way to do this is through the command line using commands like `ipfs cat` and `ipfs ls`. When you pass the content-addressed (hash) identifiers of the content you want into these commands, your IPFS node will check to see if it has a local copy of the content you're requesting. If your node has a local copy, it will return that content to you immediately. If your node does not have a local copy, it will attempt to find a peer on the IPFS network that does have the content. As long as _at least one peer_ has the content you want, your IPFS node will be able to find that peer, retrieve the content from the peer, and return that content to you.

This is the essential function of an IPFS node. It uses content-addressed (hash) identifiers to find content on the peer to peer network. It also provides that content to other peers who want it.

## Next Steps

This lesson covered how to use the command line to request content from your IPFS node, but there are many other ways to interact with IPFS nodes. If you want to learn about the many other ways you can use IPFS to access the same content using the same content-addressed link, go to the [Tutorial on Avenues for Access](/avenues-for-access/).

Otherwise return to the tutorial about [Going Online - Joining the Distributed Web](/going-online/README.md)
