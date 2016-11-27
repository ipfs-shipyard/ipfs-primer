# Lesson: Download and Install IPFS

## Goals (Learning Objectives)

After doing this Lesson you will be able to download IPFS and install it on your operating system.

## Steps

### Step 1: Download the Prebuilt IPFS Package
Visit the IPFS installation page at https://ipfs.io/docs/install/ and download the prebuilt ipfs binaries for your operating system.

**Why does the installation page talk about "Go IPFS"?** There are multiple implementations of the IPFS protocol. The core IPFS team maintain implementations in Golang and Javascript. Those are commonly referred to as [go-ipfs](https://github.com/ipfs/go-ipfs) and [js-ipfs](https://github.com/ipfs/js-ipfs). The official binaries are built from the Go implementation.

### Step 2: Unzip the Prebuilt Package

The binaries for Mac OSX and Linux are in a gzipped tar format (`.tar.gz`). The binaries for Windows are in a zip file.  Use the appropriate tool to unzip the file. There are some hints on https://ipfs.io/docs/install/ under the heading _Installing from a Prebuilt Package_

This will create a directory called go-ipfs.
```bash
LICENSE		README.md	build-log	install.sh ipfs
```

The file named `ipfs` is your executable ipfs binary.

### Step 3: Install the IPFS Binary on your executable path

To install the binary, all you need to do is put the `ipfs` binary file somewhere on your executable PATH. 

**Note about permissions**: Whichever approach you use to install the binary, make sure you have the necessary permissions. On Mac OSX or Linux, you probably want to use [sudo](https://www.sudo.ws/), which is already installed on most systems.

If you're on Mac OSX or Linux, you can use the provided install script by running

```bash
sudo go-ipfs/install.sh
```

Read the output from running this. If it complains about being unable to write the file, you need to deal with permissions (see the note above about permissions)

### Step 4: Test your installation

To test your installation, run `ipfs help`. The output should look similar to this:

```bash
> ipfs help
USAGE:

    ipfs - Global p2p merkle-dag filesystem.
...
```

## Next Steps

Next, [Initialize your IPFS Node](../initialize-node.md)
