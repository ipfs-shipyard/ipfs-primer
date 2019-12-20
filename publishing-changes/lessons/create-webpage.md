# Lesson: Create a Simple Webpage and Add It to IPFS

This lesson shows you how to create a simple webpage and add it to IPFS. Once you are able to do this you can make your webpages as beautiful or complex as you would like.

## Prerequisites
To do the steps in this lesson you must:
* [Install and Initialize IPFS](/install-ipfs/README.md) on your local machine

## Goals

After doing this Lesson you will be able to
* Create a simple webpage and add it to IPFS

## Steps

### Step 1: Start the IPFS daemon

If the IPFS daemon is not running already, then start the daemon now

```sh
$ ipfs daemon
```

### Step 2: Create webpage directory and content

Create a new webpage directory in your user's home directory.

```sh
$ cd ~
$ mkdir simple-webpage
$ cd simple-webpage/

<html>
<body>
This should be the body.
</body>
</html>
```

https://ipfs.io/ipfs/QmW2WQi7j6c7UgJTarActp7tDNikE4B2qXtFCfLPdsgaTQ
ipfs cat QmW2WQi7j6c7UgJTarActp7tDNikE4B2qXtFCfLPdsgaTQ/cat.jpg > cat.jpg

As described in the [Lesson on Using an HTTP browser to retrieve files from local IPFS gateway](/classical-web/lessons/local-gateway.md), you must tell the gateway whether you're requesting content with an IPFS hash or an IPNS hash. If you're using the hash of a specific snapshot of content -- for example a file that someone added to IPFS, use a path that starts with `/ipfs/`. If you're using an IPNS hash to get the _latest_ version of some content that gets updated over time, for example a website that gets fresh content every day, use a path that starts with `/ipns/`.

To view the wikipedia page we're using as an example in all of the lessons in the [Tutorial on The Myriad Ways to Access and Distribute IPFS Content](/avenues-for-access/README.md), use these links:

- 2017-04-30 snapshot: http://localhost:8080/ipfs/Qme2sLfe9ZMdiuWsEtajWMDzx6B7VbjzpSC2VWhtB6GoB1/wiki/Anasayfa.html
- latest (IPNS): http://localhost:8080/ipns/QmQP99yW82xNKPxXLroxj1rMYMGF6Grwjj2o4svsdmGh7S/wiki/Anasayfa.html
- latest (DNS): http://localhost:8080/ipns/wikipedia-on-ipfs.io

## Explanation

You can use a local IPFS node to read content from the worldwide IPFS network. The two ways of interacting with your local node are 1) through the command line and 2) through the HTTP gateway. You can use either of those interfaces to pass IPFS the content-addressed (hash) identifiers of the content you want. The IPFS node will use those identifiers to find that content on the network and retrieve it for you.

## Next Steps

If you want to learn about the many other ways you can use IPFS to access the same content using the same content-addressed link, go to the [Tutorial on The Myriad Ways to Access and Distribute IPFS Content](/avenues-for-access/README.md).

Otherwise proceed to the next lesson to learn how to [Get content through the public ipfs.io gateway](/classical-web/lessons/public-gateways.md)
