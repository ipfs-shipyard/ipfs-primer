# Tutorial: Files on IPFS
These Lessons are tested with go-ipfs version 0.4.8. _Please update this file on github to reflect any other versions that have been tested._

## Prerequisites

- You should have some familiarity with the command line.
- You should have `ipfs` installed - the [previous tutorial](../install-ipfs) has instructions for that

## Learning Objectives
These Lessons will teach you how to
* Add files to your local IPFS node
* Read files out of your local IPFS node
* List the files in your IPFS node
* Tell IPFS to hold onto files by _pinning_ them

## Key Concepts
* Distinction between IPFS and your regular Filesystem
* Identifying files by their Hashes
* IPFS Garbage Collection
* Pinning files on an IPFS Node

## Lessons

1. [Lesson: Add Content to IPFS and Retrieve It](/files-on-ipfs/lessons/add-and-retrieve-file-content.md)
2. [Lesson: Wrap Filenames and Directory Info around Content in IPFS](/files-on-ipfs/lessons/add-and-retrieve-file-content.md)
3. [Lesson: Pinning - Tell IPFS to Keep a File](/files-on-ipfs/lessons/pin-files.md)

## Next Steps

Once you know how to add files to IPFS and retrieve them, you will be ready to share those files on the P2P network following the [Tutorial: Going Online - Joining the Distributed Web](/going-online/README.md)

If you're wondering how to update those files after you've shared them, see the [Tutorial: Publishing Changes on the Permanent Web](/publishing-changes/README.md)

If you want to see how to access those files from the conventional HTTP web, go to the [Tutorial: Interacting with the Classical (HTTP) Web](/classical-web/README.md)

If you want to know more about how IPFS stores this content intrernally using Merkle DAGs, go to the [Tutorial: Merkle Trees and the IPFS DAG](/ipfs-dag/README.md)
