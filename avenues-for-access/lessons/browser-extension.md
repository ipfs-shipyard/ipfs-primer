# Lesson: Access IPFS content through a browser extension

_This is a placeholder. There are currently four web browser extensions that help your retrieve content from IPFS. Each works in slightly different ways. We are in the process of consolidating that code and making it more secure before we encourage people to rely on it._

When the IPFS browser extension is complete, we will publish it on the app stores for all of the browsers that support it. When you download the extension, it will automatically recognize IPFS links and will use the IPFS peer-to-peer network to retrieve the content for you -- no HTTP gateway needed, nothing else to install on your computer, no need to use the command line. You will only have to install the browser extension and the whole IPFS network will become available to you.

We consider this the next big step to getting IPFS natively supported in web browsers.  You can track this work in the github repository at https://github.com/ipfs/in-web-browsers. [This comment on a github issue](https://github.com/ipfs/pm/issues/351#issuecomment-294262546) describes the state of these efforts as of April 2017.

Among other things, this support for IPFS in browsers will make it possible to start using links that are truly content-addressed, without any reference to HTTP locations, even when you access content through a web browser. We are advocating for this to be done using a new `dweb:` address scheme. Using the `dweb:` scheme, the links to the wikipedia page we're using as an example in all of the lessons in the [Tutorial on Avenues for Access](/avenues-for-access/) will look like this:

- 2017-04-30 snapshot: dweb:/ipfs/QmezTdYeKyjPFoREStJQQbvATUP8yRJdHMMZx2rZ86p9g9/wiki/Anasayfa.html
- latest (IPNS): dweb:/ipns/QmQP99yW82xNKPxXLroxj1rMYMGF6Grwjj2o4svsdmGh7S/wiki/Anasayfa.html
- latest (DNS): dweb:/ipns/wikipedia-on-ipfs.io

## Next Steps

Return to the [Tutorial on Avenues for Access](/avenues-for-access/) to learn about the many other ways you can use IPFS to access the same content using the same content-addressed link.
