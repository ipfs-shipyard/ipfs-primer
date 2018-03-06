## Innovation Retreats to the Datacenters, aka. the Cloud (1999-2020): Web 2.0, the Peer to Peer Winter, the Social Web and the Cloud


- [The Peer to Peer Winter (1999-2014)](#the-peer-to-peer-winter-1999-2014)
- ["Web 2.0": The Servers, not the users, are the Peers](#web-20-the-servers-not-the-users-are-the-peers)
- [The "Social" Web: Forming the modern Attention Economy](#the-social-web-forming-the-modern-attention-economy)
- [Mobile Computing and the Cloud: Mainframe by Another Name (2006-present)](#mobile-computing-and-the-cloud-mainframe-by-another-name-2006-present)

### The Peer to Peer Winter (1999-2014)

There was a flurry of peer to peer activity in the late 1990s, but those efforts were squashed before they even hit the ground, with the DMCA being turned into law in 1998 and the media industry, through the Recording Industry Association of America (RIAA), dedicating millions of dollars to a marketing campaign and a series of lawsuits that successfully equated "peer to peer" with copyright infringement, content piracy, and lawlessness.

- SETI@home (1999), Napster (1999), Limewire (2000), bittorrent (2001), Kazaa (2001) & Skype (2003),
- DMCA (October 28, 1998). Napster shut down in 2001

The peer to peer winter began in 1998 when the DMCA became law. Though most of the notable peer to peer applications from that era launched after 1998, they all launched amid a hostile legal environment where public opinion had already become chilly. When Napster launched in 1999 the Recording Industry Association of America (RIAA) filed lawsuits against it almost immediately. When Napster lost those lawsuits two years later, in 2001, the winter set in properly. Though apps like Limewire Kazaa attempted to replace Napster, the law and mainstream media had already sided with the media industry and the Recording Industry Association of America (RIAA).

Despite this, peer to peer technologies continued to evolve in certain corners of the computing industry, though the term peer to peer was usually avoided.
- Grid Computing & High Performance Computing (HPC)
  - [European Grid Infrastructure](https://en.wikipedia.org/wiki/European_Grid_Infrastructure) (2001-present) https://www.egi.eu/
- Skype, which was built on p2p tech from kazaa, thrived as the dominant VoIP solution for a decade but in 2012 Microsoft replaced its p2p infrastructure with a centralized replacement.
- Spotify used a p2p network to deliver content from its launch in 2006 to 2014, when it phased out p2p delivery citing that []"there's simply no need for peer links at this point -- Spotify's servers can deliver "best-in-class" performance all by themselves."](https://www.engadget.com/2014/04/17/spotify-phases-out-peer-to-peer/)  [also ref: [Spotify Removes Peer-To-Peer Technology From Its Desktop Client](https://techcrunch.com/2014/04/17/spotify-removes-peer-to-peer-technology-from-its-desktop-client/)]


During this era people kept building Distributed Systems, but staunchly avoided talk of P2P and usually left out the key element of peer-to-peer connectivity, instead relying on centralized coordination services (example: git is distributed and is capable of p2p sharing but evolved to rely on github or self-hosted servers as the coordination point). For 15 years, billions of dollars have been poured into developing, refining, and deploying distributed technologies. While that work has occurred almost entirely within the boundaries of datacenters and centrally controlled clusters, it leaves us poised to see an explosion of high quality, secure, robust and scalable peer to peer solutions.

- git & mercurial (though their impact was mediated by github, a centralized hosted platform)
- Virtualization, High Availability, etc forced major innovations in distributed systems and orchestration of systems that are composed of thousands of nodes, resulting in cluster computing solutions like [Apache Kafka Architecture](https://kafka.apache.org/documentation.html), [Apache Spark](https://spark.apache.org/), eventually consistent databases like [CouchDB](http://guide.couchdb.org/draft/consistency.html) and [Apache Cassandra](https://cassandra.apache.org/). This has also led to "containerization" of the operating system using tools like [Docker](https://www.docker.com/), [Kubernetes](https://kubernetes.io/), and [CoreOS rkt](https://github.com/rkt/rkt/), which allow you to treat entire operating systems, or entire stacks of compiled software dependencies, as pre-configured modules that you can load, reuse, or replace with ease.

**Observe:** If you view the cyclic nature of centralization and decentralization as an inevitability, the peer to peer winter was inevitable. A staggering amount of innovation occurred between 1999 and 2014, including major advances in distributed systems engineering, network connectivity, and cryptography but also including important innovations in User Experience design, data analysis, etc. We also saw major revolutions in our cultural understanding of computing, data, and connectivity. In 1999, a statement like "your data is a part of you" would have been relegated to science fiction. In 2017, it's a baseline assumption in a wide swath of cultural commentary. Possibly we needed that cultural and technical evolution in order for a decentralized web to be feasible.

### "Web 2.0": The Servers, not the users, are the Peers

computing became about machine-to-machine communication

- RSS 2.0 (2002) + ATOM (2003) -- "Web 2.0"
- AJAX (~2004)
  - "Google made a wide deployment of standards-compliant, cross browser Ajax with Gmail (2004) and Google Maps (2005)." [cite: https://en.wikipedia.org/wiki/Ajax_(programming)]
- From this point forward, _new_ innovations happened on servers, not on PCs
- "Wisdom of the Crowd": Wikipedia, Flickr, YouTube, blogs, podcasts ... sets the tone of mainstream social participation in the "Read-write web", with all of that participation mediated by centralized services

Counterpoint: OSX, touch-screens, client-side interactions (HTML, JavaScript, CSS), Console Gaming and 3D UX, Ubuntu and other Linux flavors, even Microsoft's efforts with Windows OS
... who _possesses_ the work product, and who controls the flow of information & sharing

### The "Social" Web: Forming the modern Attention Economy
- YouTube -- centralized platform for sharing videos
- The Rise of Social Media -- centralized platforms for sharing info, links and media (audio, video, images) about people, places & events
- Communication increasingly centralized:
  - [STATS] where people get their news
  - Facebook beating up Publishers
  - Crisis of Authority, increasing isolation

Hijacking attention: {putting this in "why decentralize"}

**Observe** There were already technologies for exchanging this kind of information, years before the creation of YouTube, Friendster or Facebook. Many of the preceding platforms were either decentralized (anyone can host a peer), like irc and bulletin board systems, or entirely peer-to-peer like napster and limewire. As the social momentum drained out of these peer to peer systems, venture capitalists funded centralized platforms that captured those audiences in order to sell their attention.

### Mobile Computing and the Cloud: Mainframe by Another Name (2006-present)

"Mobile Computing" evolved with the assumption that mobile devices like the iPhone (2007) should be treated like thin clients, with the bulk of storage, analysis and computing occurring on the server-side, on computers that were increasingly (and now ubiquitously) run on cloud services.

Initial Sense of "Cloud Services" - On-Demand Virtualized Compute & Storage
- AWS launched (2006?)
- SAAS
- Platform as a Service
- WOA

Mainstream users absorbed by "The Cloud":
While this shift to cloud-based solutions initially impacted the creation of new web-based systems and solutions (Facebook, SalesForce, websites, etc) it eventually usurped established PC-based activities like Office Productivity (Google Apps), storing personal photos and media (iCloud, Dropbox, etc) and data backup (Crashplan, etc). We also shifted from physical distribution of mass-produced media (books, movies) to relying on centralized services to provide on-demand downloads (Netflix, Amazon, iTunes, Hulu)
