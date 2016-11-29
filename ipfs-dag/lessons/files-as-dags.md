# Lesson: Turn a File into a Merkle Tree

*Work in Progress* _This is the content from [this existing Lesson](https://ipfs.io/ipfs/QmTkzDwWqPbnAh5YiV5VwcTLnGdwSNsNTn2aDxdXBFca7D/example#/ipfs/QmQwAP9vFjbCtKvD8RkJdCvPHqLQjZfW7Mqbbqx18zd8j7/data/readme.md) vaguely re-framed to fit the Lesson framework._

## Goals
* Explain how IPFS represents Files as Merkle trees
* Explore the Merkle Tree Blocks that make up a File in IPFS

## Steps

### Step 1: Download the sample file and add it to IPFS

For this lesson we need a file that's larger than 256kb. Download this image: [tree-in-cosmos.jpg](https://raw.githubusercontent.com/flyingzumwalt/decentralized-web-primer/master/samples/tree-in-cosmos.jpg) (863kb)

Save it as "tree-in-cosmos.jpg" and then add it to IPFS

```sh
$ ipfs add tree-in-cosmos.jpg
added QmWNj1pTSjbauDHpdyg5HQ26vYcNWnubg1JehmwAE9NnU9
```

### Step 2:

Let's look at how IPFS represented that file internally by passing the content's hash to the `ipfs ls` command:

```
ipfs ls -v QmWNj1pTSjbauDHpdyg5HQ26vYcNWnubg1JehmwAE9NnU9
Hash                                           Size   Name
QmPHPs1P3JaWi53q5qqiNauPhiTqa3S1mbszcVPHKGNWRh 262158
QmPCuqUTNb21VDqtp5b8VsNzKEMtUsZCCVsEUBrjhERRSR 262158
QmS7zrNSHEt5GpcaKrwdbnv1nckBreUxWnLaV4qivjaNr3 262158
QmQQhY1syuqo9Sq6wLFAupHBEeqfB8jNnzYUSgZGARJrYa 76151  
```

This returned a bunch of hashes. That's different from what happened in the [lesson on adding file content to ipfs](../files-on-ipfs/add-and-retrieve-file-content), where you only got one hash back. This is because ipfs breaks up files that are bigger than 256kb and represents them as a **hash tree**. It breaks the file into content _blocks_ that are each about 256kb and then uses the hashes of those content blocks to represent how they fit together.

This is one example of how IPFS uses hash trees which are technically called **Merkle DAGs**, to represent information.

<div class="alert alert-info">
This kind of hash tree is formally known as a **Merkle DAG** -- this is because the technical term for this  type of data structure is a _Directed Acyclic Graph_, or DAG, and a mathematician named Ralph _Merkle_ invented them. Hence: Merkle DAG, or merkledag.
</div>

In this case, the hash for our file `QmWNj1pTS...` is the hash of the **root block** in a DAG that contains 4 sub-blocks.  The output from `ipfs ls` shows all of the immediate sub-blocks of your file's root block, and the
size of them and their children on disk.

Sometimes sub-blocks have sub-blocks of their own. That's when a Merkle DAG starts looking like a tree.

## Step 2: Explore The Hash Tree

```sh
$ ipfs refs QmWNj1pTSjbauDHpdyg5HQ26vYcNWnubg1JehmwAE9NnU9
QmPHPs1P3JaWi53q5qqiNauPhiTqa3S1mbszcVPHKGNWRh
QmPCuqUTNb21VDqtp5b8VsNzKEMtUsZCCVsEUBrjhERRSR
QmS7zrNSHEt5GpcaKrwdbnv1nckBreUxWnLaV4qivjaNr3
QmQQhY1syuqo9Sq6wLFAupHBEeqfB8jNnzYUSgZGARJrYa
```

```sh
ipfs object links -v
Hash                                           Size   Name  QmWNj1pTSjbauDHpdyg5HQ26vYcNWnubg1JehmwAE9NnU9
QmPHPs1P3JaWi53q5qqiNauPhiTqa3S1mbszcVPHKGNWRh 262158  
QmPCuqUTNb21VDqtp5b8VsNzKEMtUsZCCVsEUBrjhERRSR 262158  
QmS7zrNSHEt5GpcaKrwdbnv1nckBreUxWnLaV4qivjaNr3 262158  
QmQQhY1syuqo9Sq6wLFAupHBEeqfB8jNnzYUSgZGARJrYa 76151   
```


------------------
# Steps from the Original Tutorial::

### Step 2: inspect the blocks
If you feel adventurous you can get a lot of different information out of these
different blocks. you can use the sub-block hashes as input to `ipfs cat` to
see only the data in any given sub-tree (the data of that block and its
children). to see just the data of a given block and not its children, use
`ipfs block get`. but be careful, as `ipfs block get` on an intermediate block
will print out the raw binary data of its dag structure to your screen.

### Step 3: get the size of the blocks
`ipfs block stat` will tell you the exact size of a given block (without its
children), and `ipfs refs` will tell you all the children of that block.
similarly, `ipfs ls` or `ipfs object links` will show you all children and
their sizes. `ipfs refs` is a more suitable command for scripting something
to run on each child block of a given object.

## Explanation

Merkle DAGs are the core concept of IPFS. Merkle DAGs are also at the core of technologies like git and bitcoin.

Hash trees are made up of _content blocks_ that are each identified by their cryptographic hash. You can reference any of these blocks using its hash, which allows you to build trees of blocks that reference their "sub blocks" using the hashes of those sub blocks.

The `ipfs add` command will create a Merkle DAG out of the data in the files you specify. It follows the unixfs data format when doing this. What this means is
that your files are broken down into blocks, and then arranged in a tree-like structure using 'link nodes' to tie them together. A given file's 'hash' is actually the hash of the root (uppermost) node in the DAG. for a given DAG, you can easily view the sub-blocks under it with `ipfs ls`.
