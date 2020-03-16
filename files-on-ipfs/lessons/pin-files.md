# Lesson: Making sure that a file persists in your IPFS Repository

## Goals

This lesson covers the topic of "pinning" files in your IPFS repository and removing files with the ipfs garbage collector. Pinning is a very important concept in IPFS. Pinning is the mechanism that allows you to tell IPFS to always keep a given object local.

After doing this Lesson you will be able to
* Tell IPFS to hold onto specific files in your local IPFS repository
* Tell IPFS to clean up unwanted files from your local IPS repository

## Steps

### Step 1: Create the file you're going to add, and add to IPFS

IPFS semantics try to make it feel like every single object is local. Instend of "retrieve this file for me from a remote server", we need just to use `ipfs cat` or `ipfs get` which act the same way no matter where the actual object is located. While this is nice, sometimes you want to be able to control what you keep around.

Pinning is the mechanism that allows you to tell IPFS to always keep a given object local. IPFS has a fairly aggressive caching mechanism that will keep an object local for a short time after you perform any IPFS operation on it, but these objects may get garbage collected fairly regularly. To prevent that garbage collection simply pin the hash you care about. 

Firstly, add a example object to IPFS.

```sh
$ echo "ipfs rocks" > foo
$ ipfs add foo
added QmRTV3h1jLcACW4FRfdisokkQAk4E4qDhUzGpgdrd4JAFy foo
```

### Step 2: Check pinned objects

With the command `ipfs pin ls`, you can seen all objects that are pinned locally.

```sh
$ ipfs pin ls
QmRTV3h1jLcACW4FRfdisokkQAk4E4qDhUzGpgdrd4JAFy recursive
QmYMpruCgTtfwVph2CZKC6tWY9gkYEuZBfEiNpqPKQwqQi indirect
QmdncfsVm2h5Kqq9hPmU7oAVX2zTSVP3L869tgTbPYnsha indirect
...
```

The first column is a hash, and the second column is the type of pin.

Objects added through `ipfs add` are pinned as *recursively* by default. Then, our "foo" object was pinned as recursively. You can change this behavior using the flag `--pin=false` in `add` command.

There are three types of pins in the IPFS world:
* *Direct pins*, which pin just a single block, and no others in relation to it.
* *Recursive pins*, which pin a given block and all of its children.
* *Indirect pins*, which are the result of a given blocks parent being pinned recursively.

You can read more about block in the chapter [Turn a File into a Merkle Tree](/ipfs-dag/lessons/files-as-dags.html).

### Step 3: Removing a pinned object

For direct pins, we can remove using `ipfs pin rm <ipfs-hash>`.

For recursive pins, `ipfs pin rm -r <ipfs-hash>`. As the `foo` pin is a recusive, we need use

```sh
$ ipfs pin rm -r QmRTV3h1jLcACW4FRfdisokkQAk4E4qDhUzGpgdrd4JAFy
```

We can't remove indirect pins using their hash – we should instead use the hash of their root. For example:

```sh
$ ipfs pin ls | grep QmWwquipsUNnhE3oasa9oXSQLodmHtgxNAbznn3QGV1Jct
QmWwquipsUNnhE3oasa9oXSQLodmHtgxNAbznn3QGV1Jct indirect
$ ipfs pin rm QmWwquipsUNnhE3oasa9oXSQLodmHtgxNAbznn3QGV1Jct
Error: QmWwquipsUNnhE3oasa9oXSQLodmHtgxNAbznn3QGV1Jct is pinned indirectly under QmNMp5RQwbnXcqHgjHbmJMA4fGXahR6SG1SY4Zk9CFjJvo
$ ipfs pin rm QmNMp5RQwbnXcqHgjHbmJMA4fGXahR6SG1SY4Zk9CFjJvo
unpinned QmNMp5RQwbnXcqHgjHbmJMA4fGXahR6SG1SY4Zk9CFjJvo
```

### Step 4: Garbage collection

You can run the garbage collection using `ipfs repo gc`. Objects pinned will not be removed.

```sh
$ ipfs repo gc                                                       
removed QmNMp5RQwbnXcqHgjHbmJMA4fGXahR6SG1SY4Zk9CFjJvo
removed QmWss7A8SGQNZQmv1tQ1boXXharGJqDYwejNNK9PXWcX8a
removed QmVsgXKhhay2w6PnNLzjRsgZcHqtDeV51UR5vDBjtPtQoo
=======
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

c) indirect pins, which are the result of a given blocks parent being pinned recursively.

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
