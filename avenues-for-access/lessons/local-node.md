# Review: Accessing content through your local IPFS node

This lesson provides a quick review of the different ways to access content through an IPFS node that you have installed locally on your computer. These topics are covered in greater depth in the tutorials about [Files on IPFS](files-on-ipfs/README.md), [Going Online - Joining the Distributed Web](/going-online/README.md) and [Interacting with the Classical (HTTP) Web](/classical-web/README.md).

## Prerequisites
To do the steps in this lesson you must:
* Be familiar with using the command line
* [Install and Initialize IPFS](/install-ipfs/README.md) on your local machine

## Goals

After doing this Lesson you will be able to  
* Access any content through your local IPFS node using its command line interface
* Access any content through your local IPFS node's HTTP gateway

## Steps

### Step 1: Start the IPFS daemon

Start the IPFS daemon by running

```sh
$ ipfs daemon
```

If the daemon is not running, your IPFS node won't be able to retrieve content from other nodes on the network. It also won't start the HTTP gateway that you're going to use in Step 3.

### Step 2: Read the content on the command line

For example, if you would like to use the command-line to explore the snapshot of wikipedia that we're using as an example in all of the lessons in the [Tutorial on Avenues for Access](/avenues-for-access/), you can do so with commands like this:

```
# get the article for Content addressable networks
ipfs cat QmQP99yW82xNKPxXLroxj1rMYMGF6Grwjj2o4svsdmGh7S > Content_addressable_network.html

# get a picture of Alexis de Tocqueville
ipfs cat QmQP99yW82xNKPxXLroxj1rMYMGF6Grwjj2o4svsdmGh7S/path/Alexis_de_Tocqueville.jpg > Alexis_de_Tocqueville.jpg

# explore the articles in the snapshot
ipfs ls QmQP99yW82xNKPxXLroxj1rMYMGF6Grwjj2o4svsdmGh7S
```

### Step 3: Read the content from your IPFS node's HTTP gateway

As described in the [Lesson on Using an HTTP browser to retrieve files from local IPFS gateway](/classical-web/lessons/local-gateway.md), you must tell the gateway whether you're requesting content with an IPFS hash or an IPNS hash. If you're using the hash of a specific snapshot of content -- for example a file that someone added to IPFS, use a path that starts with `/ipfs/`. If you're using an IPNS hash to get the _latest_ version of some content that gets updated over time, for example a website that gets fresh content every day, use a path that starts with `/ipns/`.

To view the wikipedia page we're using as an example in all of the lessons in the [Tutorial on Avenues for Access](/avenues-for-access/), use these links:

- 2017-04-30 snapshot: http://localhost:8080/ipfs/QmQP99yW82xNKPxXLroxj1rMYMGF6Grwjj2o4svsdmGh7S
- latest (IPNS): http://localhost:8080/ipns/QmQP99yW82xNKPxXLroxj1rMYMGF6Grwjj2o4svsdmGh7S
- latest (DNS): http://localhost:8080/ipns/wikipedia-on-ipfs.io

## Explanation

You can use a local IPFS node to read content from the worldwide IPFS network. The two ways of interacting with your local node are 1) through the command line and 2) through the HTTP gateway. You can use either of those interfaces to pass IPFS the content-addressed (hash) identifiers of the content you want. The IPFS node will use those identifiers to find that content on the network and retrieve it for you.

## Next Steps

Return to the [Tutorial on Avenues for Access](/avenues-for-access/) to learn about the many other ways you can use IPFS to access the same content using the same content-addressed link.
