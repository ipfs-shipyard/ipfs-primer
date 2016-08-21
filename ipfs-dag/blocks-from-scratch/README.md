# Lesson: Creating a Merkle Tree from Scratch

*Work in Progress* _This is the content from [this existing Lesson](https://ipfs.io/ipfs/QmTkzDwWqPbnAh5YiV5VwcTLnGdwSNsNTn2aDxdXBFca7D/example#/ipfs/QmQwAP9vFjbCtKvD8RkJdCvPHqLQjZfW7Mqbbqx18zd8j7/data/readme.md) vaguely re-framed to fit the Lesson framework._

## Goals
* Build a tree of data in IPFS using cryptographic hashes to link the pieces (a Merkle DAG)

## Explanation: Blocks vs Objects
In ipfs, a block refers to a single unit of data, identified by its key (hash).
a block can be any sort of data, and does not necessarily have any sort of
format associated with it. an object, on the other hand, refers to a block that
follows the merkledag protobuf data format. it can be parsed and manipulated
via the `ipfs object` command. any given hash may represent an object or a block.

# Steps
## Step 1
Creating your own blocks is easy! simply put your data in a file and run
`ipfs block put <yourfile>` on it, or you can pipe your filedata into
`ipfs block put`, like so:

## Step 2
```
$ echo "This is some data" | ipfs block put
QmfQ5QAjvg4GtA3wg3adpnDJug8ktA1BxurVqBD8rtgVjM
$ ipfs block get QmfQ5QAjvg4GtA3wg3adpnDJug8ktA1BxurVqBD8rtgVjM
This is some data
```
Note: When making your own block data, you wont be able to read the data with
`ipfs cat`, this is because you are inputting raw data without the unixfs data
format. To read raw blocks use `ipfs block get` as shown in the example.
