# Lesson: Initialize your IPFS Repository

## Goals

After doing this Lesson you will be able to

* Initialize a local ipfs repository
* Locate where IPFS stores the contents of your local IPFS repository
* Open the IPFS Configuration file

## Steps

### Step 1: Initialize the Repository

Use the `ipfs init` command to initialize the repository. This will generate a local ipfs repository for the current user account on your machine. It also generates a cryptographic keypair that allows your ipfs node to cryptographically sign the content and messages that you create.

```sh
$ ipfs init
initializing ipfs node at /Users/jbenet/.go-ipfs
generating 2048-bit RSA keypair...done
peer identity: Qmcpo2iLBikrdf1d6QU6vXuNb6P7hwrbNPW9kLAH8eG67z
to get started, enter:

  ipfs cat /ipfs/QmYwAPJzv5CZsnA625s3Xf2nemtYgPpHdWEz79ojWnPbdG/readme

```

<div class="alert alert-info">
<b>Note:</b> If you have already initialized ipfs on your machine, you will get an error message like:

<pre>
initializing ipfs node at /Users/sally/.ipfs
Error: ipfs configuration file already exists!
Reinitializing would overwrite your keys.
</pre>

This is ok. It means you've already done this step. You can safely proceed to Step 2.
</div>

### Step 2: Use IPFS to explore the post-install documentation

<div class="alert alert-info">
If you installed a different version of ipfs, you may have gotten a slightly different path to use here. Either path will work for this tutorial. The path you got from the ipfs init command will give you documentation that's accurate for the version of ipfs you're using.
</div>

When you ran `ipfs init`, it provided a hint for how you can get started. It said:
```bash
to get started, enter:

  ipfs cat /ipfs/QmYwAPJzv5CZsnA625s3Xf2nemtYgPpHdWEz79ojWnPbdG/readme

```

This `ipfs cat` command tells ipfs to read the content matching the path you provided.  If the content isn't available locally, ipfs will attempt to find it on the peer-to-peer network.

Run the `ipfs cat` command with the path you got from the init message:

```sh
$ ipfs cat /ipfs/QmYwAPJzv5CZsnA625s3Xf2nemtYgPpHdWEz79ojWnPbdG/readme
```

You should see something like this:

```
Hello and Welcome to IPFS!

██╗██████╗ ███████╗███████╗
██║██╔══██╗██╔════╝██╔════╝
██║██████╔╝█████╗  ███████╗
██║██╔═══╝ ██╔══╝  ╚════██║
██║██║     ██║     ███████║
╚═╝╚═╝     ╚═╝     ╚══════╝

If you're seeing this, you have successfully installed
IPFS and are now interfacing with the ipfs merkledag!

 -------------------------------------------------------
| Warning:                                              |
|   This is alpha software. use at your own discretion! |
|   Much is missing or lacking polish. There are bugs.  |
|   Not yet secure. Read the security notes for more.   |
 -------------------------------------------------------

Check out some of the other files in this directory:

  ./about
  ./help
  ./quick-start     <-- usage examples
  ./readme          <-- this file
  ./security-notes

```

You can explore other objects in there. For example, check out `security-notes`:


```sh
ipfs cat /ipfs/QmYwAPJzv5CZsnA625s3Xf2nemtYgPpHdWEz79ojWnPbdG/security-notes
```

### Step 3: Locate where IPFS Stores the Repository Contents on your Machine

`ipfs` stores its local object repository in `~/.ipfs`

```sh
$ ls ~/.ipfs
```

The contents of that directory look like this:

```sh
blocks		config		datastore	version
```
All of the contents of your IPFS repository are stored within this directory. For example, the readme file from above is stored in here, along with the other files it links to. You can run a grep to find out the exact location.

### Step 4: Open the IPFS Configuration file

The configuration for your ipfs repository is in a json file that's usually stored at `~/.ipfs/config`. To view the current config, run:

```sh
$ ipfs config show
```
One of the useful details in this config file is at `Datastore.Path`. This tells you where the ipfs repository's contents are being stored. As we saw in Step 3, this is usually `~/.ipfs`

## Next Steps

Next, proceed to the [Files on IPFS](../../files-on-ipfs) tutorial.
