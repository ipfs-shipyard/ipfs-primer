# Lesson: Sneakernets - moving the data on USB Drives and other Hardware

We're not kidding. If you'd like to move IPFS content between networks via [sneakernet](https://en.wikipedia.org/wiki/Sneakernet), IPFS is just fine with that. This lesson covers how to load IPFS content onto storage devices like USB drives so that you can physically move the content to new networks and then re-publish it.  Without ever relying on a direct connection between the networks, this will make the IPFS links for your content valid on both sides of the air gap.

Examples of how this is useful:
* Make internet content available in places that don't have direct connections to the internet backbone (remote locations with limited connectivity, space stations)
* Circumvent censorship by governments, corporations and overbearing parents.

For this example we will pretend you're using an external drive to move a snapshot of wikipedia from IPFS to a new network where wikipedia isn't available.

## Prerequisites
To do the steps in this lesson you must:
* Be familiar with using the command line
* [Install and Initialize IPFS](/install-ipfs/README.md) on your local machine

## Goals

After doing this Lesson you will know how to physically move IPFS content across an airgap, making it available over IPFS and HTTP on the other side.

## Steps

### Step 1: Download the content you want to move, plus a copy of IPFS

Use `ipfs get` command o download the content you want to move across networks. In this example, we download a complete snapshot of Wikipedia archive to disk, saving it as a folder called `WikipediaSnapshot` _(Warning: this snapshot is 15 GB. You might want to use something smaller)_:

```sh
$ ipfs get Qme2sLfe9ZMdiuWsEtajWMDzx6B7VbjzpSC2VWhtB6GoB1/wiki/Anasayfa.html -o WikipediaSnapshot
```

Download the latest IPFS binaries into your drive too. You will need this in order to publish the content on the other side. Make sure to download the appropriate go-ipfs binary for the computer you will be moving the data to. *Note: there might be a newer version of ipfs available when you read this. Find out the most current version number at https://dist.ipfs.io/#go-ipfs*

```sh
$ ipfs get /ipns/dist.ipfs.io/go-ipfs/v0.4.8 -o go-ipfs-v0.4.8
```

### Step 2: Copy the files to your external drive

- Copy the snapshot (ie. the folder "WikipediaSnapshot") to your external drive
- Copy the IPFS binaries you downloaded (ie. the folder "go-ipfs-v0.4.8") into your external drive

### Step 3: Move to the next computer

- Eject your external drive
- Physically carry your external drive to the next computer you want to use the information from.

### Step 4: Install IPFS on the next computer and load the content

First Install and initialize the IPFS binary on the new computer. The instructions in [the installation tutorial](/install-ipfs/README.md) might help.

Then import the data into ipfs (in this case, the folder called `WikipediaSnapshot`)

```sh
$ ipfs add -r WikipediaSnapshot
```

### Step 5: Confirm that the content is now available on the new computer

Start the ipfs daemon:

```sh
ipfs daemon
```

The snapshot link should now work: http://localhost:8080/ipfs/Qme2sLfe9ZMdiuWsEtajWMDzx6B7VbjzpSC2VWhtB6GoB1/wiki/Anasayfa.html

## Explanation

This approach allows you to physically move IPFS content into networks where it was previously unavailable.

Because IPFS uses content-addressing, as long as the content you added to the second network is identical to the original content you originally exported from IPFS, the IPFS identifier for your content will be identical in both networks. 

## Next Steps

Return to the [Tutorial on Avenues for Access](/avenues-for-access/) to learn about the many other ways you can use IPFS to access the same content using the same content-addressed link.
