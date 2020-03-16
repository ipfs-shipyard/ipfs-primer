# Lesson: The Power of Content-addressing

## Goals

This lesson introduces the concept of _content addressing_ and explores the powerful implications of using this approach.

After doing this Lesson you will be able to  
* Define _content addressing_ and compare it with _location-addressing_
* Explain the implications of being able to access IPFS content through so many different paths

## Explanation

### The Problem: Identifying Content by its Location

When you use an `http://` or `https://` link to point to a webpage, image, spreadsheet, dataset, tweet, etc, you're identifying content by its location.  The link is an identifier that points to a particular location on the web, which corresponds to a particular server, or set of servers, somewhere on the web.  **Whoever controls that location controls the content.** That's how HTTP works. It's _location-addressed_. Even if a thousand people have downloaded copies of a file, meaning that the content exists in a thousand locations, HTTP points to a single location. This location-addressed approach forces us all to pretend that the data are in only one location. Whoever controls that location decides what content to return when people use that link. They also decide whether to return any content at all.

To get a sense of how impractical it is to address content by its location, imagine if I used location-addressing to recommend the book [Why Information Grows](http://www.goodreads.com/book/show/20763722-why-information-grows).

If I identify the book by its content, saying "Check out the book called _Why Information Grows_ by César Hidalgo. The ISBN is 0465048994.", you will be able to get any copy of the book from any source and know that you're reading the information I recommended. You might even say "Oh. I already read it." or "My roommate has it in the other room. I'll borrow it from him.", saving yourself the cost or effort of getting another copy.

By contrast, if I used location-addressing to identify the book, I would have to point to a location, saying something like "Go to the news stand at Market & 15th in Philadelphia and ask for the thing 16 inches from the south end of the third shelf on the east wall" Those instructions are confusing and awkward, but that is how http links work. They identify content by its location and they rely on the 'host' at that location to provide the content to visitors. There are lots of things that could go wrong with this approach. It also puts a lot of power and responsibility on the shoulders of whoever controls the location you're pointing to - in this case the news stand.

Let's consider the responsibilities of whoever controls the location we've pointed to. If the people running the news stand want my directions (aka. my "link") to remain valid, allowing people to access the book, they have to:

* Always be open, 24/7, in case someone wants to read the book.
* Provide the book to _everyone_ who seeks the book, whether it's one person or hundreds of thousands of people.
* Protect the integrity of the book by preventing anyone from tampering with it.
* Never remove the book from its shelf - if they get rid of it, or even move it, my link is broken and nobody will be able to use my instructions to find the book.

Along with those responsibilities come a great amount of power. The proprietors of the news stand control the location that my directions point to, so they can choose to:

* Dictate who is allowed to see the book.
* Move the book without telling anyone.
* Destroy the book.
* Charge people money to access the book or force them to watch ads when they walk in the door.
* Collect data about everyone who accesses my book, using that information however they want.
* Replace the book with something else -- They might not even put a book there, since my instructions are just describing a location, a malicious actor could replace the book with something dangerous, turning the location into a trap!

Location-addressing has worked on the web for 25 years, but it's starting to get painful and It's about to get much worse. As long as we continue to rely on it, the web will continue to be unstable, insecure, and prone to manipulation or exploitation.

### The Solution: Identify Information by its Fingerprint, not its Location

The alternative is to identify content by its "fingerprint" rather than identifying it by its location. That way, when someone says "Look at the content with this fingerprint" you can get it from anyone who has a copy of the content. To do this, we identify content by its cryptographic hash. A cryptographic hash is a short string of letters and numbers that's calculated by feeding your content into a _cryptographic hash function_ like [SHA](https://en.wikipedia.org/wiki/SHA-3).

When we identify content in this way, using the content's cryptographic hash instead of its location to identify it, this is called _content-addressing_.
The cryptographic hash for a piece of content never changes, which means **content addressing guarantees that the links will always return the same content**, regardless of _where_ I retrieve the content from, regardless of _who_ added the content to the network, and regardless of when the content was added. That's the essential power of using a _content-addressed_ protocol like IPFS instead of using a _location-addressed_ protocol like HTTP.

### The Implications of Content Addressing

**Content-addressed links are permanent.** The link permanently points to _exactly_ that content. This has many powerful implications. From a computer science perspective, any time we create data that uses content-addressed links, we are creating a [persistent data structure](https://en.wikipedia.org/wiki/Persistent_data_structure). There is a great amount of literature on the applications for persistent data structures. For this lesson, we will call out just a few implications of _storing_ and _sharing_ data using a content-addressed protocol:

#### It lets us store data together.

This decentralized, content-addressed approach radically increases the durability of data. It ensures that data will not become endangered as long as anyone is still relying on it because anyone can hold a valid copy of the data they care about. If you hold a copy of a dataset on any of your devices, or if you pay someone to host it on an IPFS node for you, you become part of the network of stewards who protect that dataset from being lost. You won't have to worry about whether someone is going to turn off the servers where your data are hosted because _you are one of the hosts_. You and your peers hold the data among yourselves and are able to share the data directly with each other without relying on centralized points of failure.

#### It increases the integrity of data.

Decentralization also increases the integrity of data because links are content-addressed. This means we can validate data by checking the data's fingerprints against the links. That kind of validation is impossible with location-addressed links. This is especially powerful on the large scale, where millions of websites and datasets reference each other billions of times. With location-addressed links, all of those connections are brittle. With content-addressed links, the connections become resilient and reliable.

#### Links can come back to life.

**As soon as any node has the content, everyone's links start working.** Even if someone destroys all the copies on the network, it only takes one node adding the content in order to restore availability. A cryptographic hash _permanently_ points to the content it was derived from, so IPFS links permanently point to their content. Even if the content becomes unavailable for a period, the links will work as soon as anyone starts providing the content again.

#### Harder to attack, easier to recover.

**Even if the original publisher is taken down, the content can be served by anyone who has it.** As long as at least one node on the network has a copy of the content, everyone will be able to get it.  This means the responsibility for serving content can change over time without changing the way people link to the content and without any doubt that the content you're reading is exactly the content that was originally published.

**The content you download is cryptographically verified** to ensure that it hasn’t been tampered with.

**IPFS can work in partitioned networks** - you don’t need a stable connection to the rest of the web in order to access content through IPFS. As long as your node can connect to at least one node with the content you want, it works!

**If one IPFS gateway gets blocked, you can use another one.** IPFS gateways are all capable of serving the same content, so you’re not stuck relying on one point of failure.

**Lightening the load**: With IPFS, people viewing the content are also helping distribute the content (unless they opt out) and anyone can choose to pin a copy of some content on their node in order to help with access and preservation.

**You can read anonymously.** As with HTTP, IPFS can work over Tor and other anonymity systems

**IPFS does not rely on DNS**. If someone blocks your access to DNS or spoofs DNS in your network, it will not prevent IPFS nodes from resolving content over the peer-to-peer network. Even if you're using the DNSlink feature of IPFS, you just need to find a gateway that _does_ have access to DNS. As long as the gateway you're relying on has access to DNS it will be able to resolve your DNSlink addresses.

**IPFS does not rely on the Certificate Authority System**, so bad or corrupt Certificate Authorities do not impact it.

**You can move content via [sneakernet](https://en.wikipedia.org/wiki/Sneakernet)!** _This is very useful in areas with poor connectivity, due to resource limitations, security reasons, or censorship._ Even if your network is physically disconnected from the rest of the internet, you can write content from IPFS onto USB drives or other external drives, physically move them to computers connected to a new network, and re-publish the content on the new network. Even though you're on a separate network, IPFS will let nodes access the content using the same identifiers in both networks as long as at least one node on the network has that content.

**IPFS nodes work hard to find each other on the network** and to reconnect with each other after connections get cut.

(experimental) **You can even form private IPFS networks** to share information _only_ with computers you've chosen to connect with.

## Further Reading

Further light Reading:
- [HTTP is obsolete. It's time for the distributed, permanent web](https://ipfs.io/ipfs/QmNhFJjGcMPqpuYfxL62VVB9528NXqDNMFXiqN5bgFYiZ1/its-time-for-the-permanent-web.html)
- [Instructions for Saving Endangered Data](https://github.com/ipfs/community/blob/master/articles/endangered-data.md)

Videos to Watch:
- [this part of a talk by Juan Benet talk](https://youtu.be/2RCwZDRwk48?t=847)

Academic Papers:
- [The IPFS Whitepaper](https://github.com/ipfs/papers/raw/master/ipfs-cap2pfs/ipfs-p2p-file-system.pdf)

## Next Steps

Read the [Tutorial on The Myriad Ways to Access and Distribute IPFS Content](/avenues-for-access/README.md) to learn about the many different ways you can use IPFS to access the same content using the same content-addressed link.
