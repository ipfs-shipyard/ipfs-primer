# Lesson: Making sure that a file persists in your IPFS Repository

## Goals

This lesson covers the topic of "pinning" files in your IPFS repository and removing files with the ipfs garbage collector. Pinning is a very important concept in IPFS. Pinning is the mechanism that allows you to tell IPFS to always keep a given object local.

After doing this Lesson you will be able to
* Tell IPFS to hold onto specific files in your local IPFS repository
* Tell IPFS to clean up unwanted files from your local IPS repository

## Steps

### Step 1: Create the file you're going to add and pin

Create a file called `foo.txt` and put the text "ipfs rocks" in it. Here is an easy way to do this on the command line:

```sh
$ echo "ipfs rocks" > foo.txt
```

### Step 2: Add the file to IPFS

```sh
$ ipfs add foo.txt
added QmRTV3h1jLcACW4FRfdisokkQAk4E4qDhUzGpgdrd4JAFy foo.txt
```

### Step 3: List objects pinned to local storage

```sh
$ ipfs pin ls --type=all
QmRTV3h1jLcACW4FRfdisokkQAk4E4qDhUzGpgdrd4JAFy recursive
QmY5heUM5qgRubMDD1og9fhCPA6QdkMp3QCwd4s7gJsyE7 indirect
```

The first object listed above is the `foo.txt` file. Objects added through `ipfs add` are pinned recursively by default.

There are three types of pins in the ipfs world:

a) direct pins, which pin just a single block, and no others in relation to it;

b) recursive pins, which pin a given block and all of its children;

c) indirect pins, which are the result of a given block's parent being pinned recursively.

### Step 4: Unpin an object

You can unpin `foo.txt` like this:

```sh
$ ipfs pin rm QmRTV3h1jLcACW4FRfdisokkQAk4E4qDhUzGpgdrd4JAFy
unpinned QmRTV3h1jLcACW4FRfdisokkQAk4E4qDhUzGpgdrd4JAFy
```

Ok, now verify that it no longer exists:

```sh
$ ipfs cat QmRTV3h1jLcACW4FRfdisokkQAk4E4qDhUzGpgdrd4JAFy
ipfs rocks
```

Wait, it still appears to be there! Ok, you must run the garbage collector and then verify again:

```sh
$ ipfs repo gc
removed QmRTV3h1jLcACW4FRfdisokkQAk4E4qDhUzGpgdrd4JAFy
$ ipfs cat QmRTV3h1jLcACW4FRfdisokkQAk4E4qDhUzGpgdrd4JAFy
Error: merkledag: not found
```

IPFS has a fairly aggressive caching mechanism that will keep an object local for a short time after you perform any ipfs operation on it, but these objects may get garbage collected fairly regularly.

A pinned object cannot be garbage collected, if you don't believe me try this:

```sh
$ ipfs add foo.txt
added QmRTV3h1jLcACW4FRfdisokkQAk4E4qDhUzGpgdrd4JAFy foo.txt
$ ipfs repo gc
$ ipfs cat QmRTV3h1jLcACW4FRfdisokkQAk4E4qDhUzGpgdrd4JAFy
ipfs rocks
```

## Explanation

IPFS nodes treat the data they store like a cache, meaning that there is no guarantee that the data will continue to be stored. Pinning a CID (hash) tells an IPFS node that the data is important and mustn’t be thrown away. You should pin any content you consider important, to ensure that content is retained long-term. Since data important to someone else may not be important to you, pinning lets you have control over the disk space and data retention you need.

## Next Steps
Next, proceed to the [Going Online](../../going-online/README.md) tutorial.
