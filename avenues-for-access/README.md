# Tutorial: The Myriad ways to Access and Distribute IPFS Content
These Lessons are tested with go-ipfs version 0.4.8. _Please update this file on github to reflect any other versions that have been tested._

IPFS hashes are permanent, content-addressed identifiers for your content. This means that you can use many different ways to access, replicate, and/or redistribute the same content using the same link/identifier. The lessons in this tutorial explore many of the ways that you can do this. If you want to learn about why its valuable to have all of these options, read the lesson on [the power of content-addressing](/avenues-for-access/lessons/power-of-content-addressing.md)

All of the lessons use the same content: TODO [the entry on Content-addressable networks] within a TODO[complete snapshot of wikipedia]

(based on https://en.wikipedia.org/wiki/Content_addressable_network)

## Learning Objectives
These Lessons will teach you how to
* Define _content addressing_ and compare it with _location-addressing_
* Use IPFS content hashes to access the same content in many ways with the same link
* Access content through the public IPFS gateways at ipfs.io
* Access content through any IPFS node's http gateway
* Access content using the IPFS browser extension
* Access IPFS content through Tor
* Use a sneakernet to move and redistribute IPFS content
* Explain the implications of being able to access IPFS content through so many different paths

## Lessons

1. Read about [The Power of Content-addressing](/avenues-for-access/lessons/power-of-content-addressing.md)
2. Review the lesson on [Retrieving content from a peer](/going-online/lessons/retrieve-from-peer.md)
3. Review these lessons from the Tutorial on Interacting with the Classical (HTTP) Web
  - Review: [Lesson: Using an HTTP browser to retrieve files from local IPFS gateway](/classical-web/lessons/local-gateway.md)
  - Review: [Lesson: Using the public IPFS gateways at ipfs.io](/classical-web/lessons/public-gateways.md)
  - Review: [Lesson: Access IPFS content through any IPFS gateway](/classical-web/lessons/other-gateways.md)
4. [Lesson: Access IPFS content through Tor gateways (experimental)](/avenues-for-access/lessons/tor-gateways.md)
5. [Lesson: Run IPFS over Tor transport (experimental)](/avenues-for-access/lessons/tor-transport.md)
6. [Lesson: Access IPFS content through a browser extension](/avenues-for-access/lessons/browser-extension.md)
7. [Lesson: Sneakernets - moving the data on USB Drives and other Hardware](/avenues-for-access/lessons/sneakernets.md)


## Next Steps

If you're wondering how to update content after you've shared it, see the [Tutorial: Publishing Changes on the Permanent Web](/publishing-changes/README.md)

If you want to know more about how IPFS stores this content intrernally using Merkle DAGs, go to the [Tutorial: Merkle Trees and the IPFS DAG](/ipfs-dag/README.md)
