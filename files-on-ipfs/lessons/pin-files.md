# Lesson: Making sure that a file persists in your IPFS Repository

## Goals

This lesson covers the topic of "pinning" files in your IPFS repository and removing files with the IPFS garbage collector.

After doing this Lesson you will be able to  
* Tell ipfs to hold onto specific files in your local ipfs repository
* Tell ipfs to clean up unwanted files from your local ipfs repository

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
```

## Explanation

## Next Steps

Next, learn how to [Going Online](/going-online/README.md).
