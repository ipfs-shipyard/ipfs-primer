# Lesson: Using an HTTP browser to retrieve files from a local IPFS gateway

This lesson shows some of the different ways to access content through an IPFS node that you have installed locally on your computer. Some of the underlying topics are covered in greater depth in the tutorials about [Files on IPFS](files-on-ipfs/README.md) and [Going Online - Joining the Distributed Web](/going-online/README.md).

## Prerequisites
To do the steps in this lesson you must:
* [Install and Initialize IPFS](/install-ipfs/README.md) on your local machine

## Goals

After doing this Lesson you will be able to  
* Access any content through your local IPFS node's HTTP gateway

## Steps

### Step 1: Start the IPFS daemon

Start the IPFS daemon by running

```sh
$ ipfs daemon
```

If the daemon is not running, your IPFS node won't be able to retrieve content from other nodes on the network. It also won't start the HTTP gateway that you're going to use in Step 2.

### Step 2: Read request content through your IPFS node's HTTP gateway

As described in the [Lesson on Using an HTTP browser to retrieve files from local IPFS gateway](/classical-web/lessons/local-gateway.md), you must tell the gateway whether you're requesting content with an IPFS hash or an IPNS hash. If you're using the hash of a specific snapshot of content -- for example a file that someone added to IPFS, use a path that starts with `/ipfs/`. If you're using an IPNS hash to get the _latest_ version of some content that gets updated over time, for example a website that gets fresh content every day, use a path that starts with `/ipns/`.

To view the wikipedia page we're using as an example in all of the lessons in the [Tutorial on Avenues for Access](/avenues-for-access/), use these links:

- 2017-04-30 snapshot: http://localhost:8080/ipfs/QmR1gzPYUwxEUWHbeRggZzfYy5Fxsd8Qc7hXUUnJQwxrZq/wiki/Anasayfa.html
- latest (IPNS): http://localhost:8080/ipns/QmVH1VzGBydSfmNG7rmdDjAeBZ71UVeEahVbNpFQtwZK8W/wiki/Anasayfa.html
- latest (DNS): http://localhost:8080/ipns/wikipedia-on-ipfs.io

## Explanation

You can use a local IPFS node to read content from the worldwide IPFS network. The two ways of interacting with your local node are 1) through the command line and 2) through the HTTP gateway. You can use either of those interfaces to pass IPFS the content-addressed (hash) identifiers of the content you want. The IPFS node will use those identifiers to find that content on the network and retrieve it for you.

## Next Steps

If you want to learn about the many other ways you can use IPFS to access the same content using the same content-addressed link, go to the [Tutorial on Avenues for Access](/avenues-for-access/).

Otherwise proceed to the next lesson to learn how to [Get content through the public ipfs.io gateway](/classical-web/lessons/public-gateways.md)
