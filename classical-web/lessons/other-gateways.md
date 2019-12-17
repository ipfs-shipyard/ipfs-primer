# Lesson: Access IPFS content through any IPFS gateway

## Goals

This lesson covers using _any_ IPFS gateway to access IPFS content. It's a condensed review of the [Lesson on Using an HTTP browser to retrieve files from a local IPFS gateway](/classical-web/lessons/local-gateway.md)

After doing this Lesson you will be able to  
* Use the HTTP address of any IPFS gateway to access IPFS content

## Steps

### Step 1: Get the address of a gateway

As we covered in [Tutorial: Going Online - Joining the Distributed Web](/going-online/README.md), when you run an IPFS daemon, it exposes an HTTP endpoint that acts as a gateway between HTTP and the IPFS network. This means that you can, in theory, point your web browser at any IPFS node's HTTP endpoint and use it as a gateway. In reality, the person operating that node usually needs to take extra steps to make their gateway available over HTTP (NAT traversal, etc).

For these examples we will use the gateway at `http://dweb.link`

### Step 2: Build the Path to your Content

As described in the [Lesson on Using an HTTP browser to retrieve files from local IPFS gateway](/classical-web/lessons/local-gateway.md), you must tell the gateway whether you're requesting content with an IPFS hash or an IPNS hash. If you're using the hash of a specific snapshot of content -- for example a file that someone added to IPFS, use the path `/ipfs/<your-ipfs-hash>`. If you're using an IPNS hash to get the _latest_ version of some content that gets updated over time, for example a website that gets fresh content every day, use the path `/ipns/<your-ipns-hash>`


### Step 3: Request the content from the gateway
Combine the gateway's address (ie. `http://dweb.link`) with the path to your content (ie. `/ipfs/<your-ipfs-hash>`). Use that to request the content.

To view the wikipedia page we're using as an example in all of the lessons in the [Tutorial on The Myriad Ways to Access and Distribute IPFS Content](/avenues-for-access/README.md), use these links:

- 2017-04-30 snapshot: http://dweb.link/ipfs/Qme2sLfe9ZMdiuWsEtajWMDzx6B7VbjzpSC2VWhtB6GoB1/wiki/Anasayfa.html
- latest (IPNS): http://dweb.link/ipns/QmQP99yW82xNKPxXLroxj1rMYMGF6Grwjj2o4svsdmGh7S/wiki/Anasayfa.html
- latest (DNS): http://dweb.link/ipns/wikipedia-on-ipfs.io

## Explanation
With the above examples, we are using an HTTP connection over the internet to someone (`http://dweb.link`) providing a gateway onto the IPFS network. In this way you can access information in the IPFS network at large, and you do not need to run your own IPFS gateway.

TODO
* Restricting the content that your gateway will serve
* Security concerns -- the gateway can see all the things that an HTTP server can see.

## Next Steps

If you want to learn about the many other ways you can use IPFS to access the same content using the same content-addressed link, go to the [Tutorial on The Myriad Ways to Access and Distribute IPFS Content](/avenues-for-access/README.md).

Otherwise return to the tutorial on [Interacting with the Classical (HTTP) web](/classical-web/README.md)
