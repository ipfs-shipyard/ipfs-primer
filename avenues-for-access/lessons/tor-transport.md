# Lesson: Run IPFS over Tor transport (experimental)

IPFS has an experimental feature that allows an IPFS node to interact with other IPFS nodes over the Tor transport protocol. The goal of this feature is to allow IPFS nodes to anonymously communicate with each other. **This feature is experimental!** Until we have tested this feature and removed the "experimental" designation, you should assume that information about your node might leak.

In the meantime, a more secure way to protect your anonymity would be to [access data using the tor browser and an IPFS tor gateway](/avenues-for-access/lessons/tor-gateways.md).

## Prerequisites

To do the steps in this lesson you must:
* Be familiar with using the command line
* [Install and Initialize IPFS](/install-ipfs/README.md) on your local machine

## Goals

After doing this Lesson you will be able to  
* Configure an IPFS node to use the Tor transport
* Request content through that node

## Steps

### Step 1: Configure IPFS to use the Tor transport

TODO - *This explanation has not been written yet. If you want to help work on it, or if you want to encourage us to give it attention, open an issue at https://github.com/flyingzumwalt/decentralized-web-primer/issues*

### Step 2: Start the IPFS daemon

Start the IPFS daemon

```sh
$ ipfs daemon
```

For more info about this step, read [Tutorial: Going Online - Joining the Distributed Web](/going-online/README.md)

### Step 3: Request the content you want from your local IPFS node's gateway

 This step is the same as [using any other IPFS gateway](../../classical-web/lessons/other-gateways.md) -- only the address of the gateway is different: If you're using the hash of a specific snapshot of content, use the path `http://localhost:8080/ipfs/<your-ipfs-hash>`. If you're using an IPNS hash to get the _latest_ version of some content, use the path `http://localhost:8080/ipns/<your-ipns-hash>`

To view the wikipedia page we're using as an example in all of the lessons in the [Tutorial on The Myriad Ways to Access and Distribute IPFS Content](/avenues-for-access/README.md), use these links:

- 2017-04-30 snapshot: http://localhost:8080/ipfs/Qme2sLfe9ZMdiuWsEtajWMDzx6B7VbjzpSC2VWhtB6GoB1/wiki/Anasayfa.html
- latest (IPNS): http://localhost:8080/ipns/QmQP99yW82xNKPxXLroxj1rMYMGF6Grwjj2o4svsdmGh7S/wiki/Anasayfa.html
- latest (DNS): http://localhost:8080/ipns/wikipedia-on-ipfs.io

## Explanation

**This feature is experimental!** Until we have tested this feature and removed the "experimental" designation, you should assume that the explanation here is aspirational and provisional.  We are describing what _should_ be true but we have not yet tested and confirmed that the approach works without leaking information.

When you configure an IPFS node to use the Tor transport, the node will pipe all of its peer-to-peer communications through the Tor onion network. This means that when you request content from your local node, whether through its http gateway at localhost:8080 or through the command line, the node will access the IPFS network over the tor transport protocol. When it connects with peer nodes on the IPFS network, the peers will not know which node they are talking to nor where it is.

## Next Steps

Return to the [Tutorial on The Myriad Ways to Access and Distribute IPFS Content](/avenues-for-access/README.md) to learn about the many other ways you can use IPFS to access the same content using the same content-addressed link.
