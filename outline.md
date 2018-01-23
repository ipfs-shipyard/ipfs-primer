
<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Preface](#preface)
- [History: The Cycle of Centralization and Decetralization](#history-the-cycle-of-centralization-and-decetralization)
	- [Mainframes and Thin Clients (1960s to mid-1980s)](#mainframes-and-thin-clients-1960s-to-mid-1980s)
		- [The Internet: Designed to Survive Nuclear Attacks](#the-internet-designed-to-survive-nuclear-attacks)
	- [The Personal Computing (PC) Revolution and the World Wide Web (WWW) (1980-1999)](#the-personal-computing-pc-revolution-and-the-world-wide-web-www-1980-1999)
	- [Innovation Retreats to the Datacenters, aka. the Cloud (1999-2020): Web 2.0, the Peer to Peer Winter, the Social Web and the Cloud](#innovation-retreats-to-the-datacenters-aka-the-cloud-1999-2020-web-20-the-peer-to-peer-winter-the-social-web-and-the-cloud)
		- [The Peer to Peer Winter (1999-2014)](#the-peer-to-peer-winter-1999-2014)
		- ["Web 2.0": The Servers, not the users, are the Peers](#web-20-the-servers-not-the-users-are-the-peers)
		- [The "Social" Web: Forming the modern Attention Economy](#the-social-web-forming-the-modern-attention-economy)
		- [Mobile Computing and the Cloud: Mainframe by Another Name (2006-present)](#mobile-computing-and-the-cloud-mainframe-by-another-name-2006-present)
	- [Re-Decentralization of the Web (2014-present)](#re-decentralization-of-the-web-2014-present)
		- [Early Rumbles of a return to P2P](#early-rumbles-of-a-return-to-p2p)
		- [The Role of Bitcoin and Blockchains](#the-role-of-bitcoin-and-blockchains)
		- [The New Generation of Peer to Peer technologies](#the-new-generation-of-peer-to-peer-technologies)
- [Why Decentralize?](#why-decentralize)
	- [Restoring Social Interaction and Social Institutions](#restoring-social-interaction-and-social-institutions)
	- [Resilience: Making a Library that can't burn](#resilience-making-a-library-that-cant-burn)
	- [Offline-First:](#offline-first)
	- [Meeting the Demands of VR, Machine Learning and Internet of Things](#meeting-the-demands-of-vr-machine-learning-and-internet-of-things)
	- ["Web Scale" implies Participation](#web-scale-implies-participation)
	- [Resisting Monopolies](#resisting-monopolies)
		- [Resisting Data Monopolies](#resisting-data-monopolies)
		- [Resisting Monopolistic Control of Connectivity](#resisting-monopolistic-control-of-connectivity)
	- [Security & Privacy](#security-privacy)
	- [Protecting Civilian Infrastructure from Cyber Warfare](#protecting-civilian-infrastructure-from-cyber-warfare)
- [Isn't the web already decentralized?](#isnt-the-web-already-decentralized)
	- [Who gets to be a peer](#who-gets-to-be-a-peer)
	- [Possession](#possession)
- [How to build a Decentralized Web](#how-to-build-a-decentralized-web)
	- [Preface: Overlay Networks](#preface-overlay-networks)
	- ["The Wires" Physical-layer Connectivity](#the-wires-physical-layer-connectivity)
	- ["The Receivers" Application-layer Connectivity: Networking Stack](#the-receivers-application-layer-connectivity-networking-stack)
	- ["The Languages" - data structures and encryption](#the-languages-data-structures-and-encryption)
		- [Content-Addressing and Immutable, Authenticatable Data Structures](#content-addressing-and-immutable-authenticatable-data-structures)
		- [Encryption: Controlling Access to Data](#encryption-controlling-access-to-data)
		- [Merkle DAGs](#merkle-dags)
		- [Interoprable Data Formats](#interoprable-data-formats)
	- ["The Signaling Network; The Rumor Mill" -- passing the data around with DHTs, Data Interchange (bitswap) & Routing](#the-signaling-network-the-rumor-mill-passing-the-data-around-with-dhts-data-interchange-bitswap-routing)
		- [Updates (aka. Mutable Data) -- allowing data to change over Time](#updates-aka-mutable-data-allowing-data-to-change-over-time)
		- [DHTs - providing and seeking pieces of the web-scale puzzle](#dhts-providing-and-seeking-pieces-of-the-web-scale-puzzle)
		- [Bitswap and Routing - passing the bits around](#bitswap-and-routing-passing-the-bits-around)
		- [(Mavens and Connectors)](#mavens-and-connectors)
		- [Reader Privacy](#reader-privacy)
		- [Writer Privacy](#writer-privacy)
		- [Censorship: Allowing, Denying, and Reinforcing Information](#censorship-allowing-denying-and-reinforcing-information)
	- [Managing the Commons: Stewardship of Data and Networks](#managing-the-commons-stewardship-of-data-and-networks)
		- [Finding Stuff: Search Engines, trustworthiness, search indexes as datasets](#finding-stuff-search-engines-trustworthiness-search-indexes-as-datasets)
		- [Keeping Stuff: storing a copy of the data you rely on](#keeping-stuff-storing-a-copy-of-the-data-you-rely-on)
		- [Stewardship: Reinstating the role of Libraries and Archives](#stewardship-reinstating-the-role-of-libraries-and-archives)
- [Who: People and Incentives](#who-people-and-incentives)
	- [Incentives, Game Theory, Nuclear War and the Internet](#incentives-game-theory-nuclear-war-and-the-internet)
	- [Networks Tend to Become Monopolies, and are prone to become Regulated as Utilities](#networks-tend-to-become-monopolies-and-are-prone-to-become-regulated-as-utilities)
	- [Economic Models on the Decentralized Web (Economic Patterns in Decentralized Context)](#economic-models-on-the-decentralized-web-economic-patterns-in-decentralized-context)
	- [Open Source](#open-source)
	- [Cryptocurrencies and Protocol-incentivised Networks](#cryptocurrencies-and-protocol-incentivised-networks)

<!-- /TOC -->

# Preface
- Networks + Incentives

# History: The Cycle of Centralization and Decetralization

mainframe > PC > Datacenters & Cloud > Decentralized Web

## Mainframes and Thin Clients (1960s to mid-1980s)
- Mainframes and Thin Clients
- Time Sharing
- Big Players: IBM, Intel

### The Internet: Designed to Survive Nuclear Attacks
- Understanding the difference between the Internet and the Worldwide Web
- ARPAnet -- a network of Mainframes
- Rand Corp, War Games, Game Theory (incentives...)
- TCP/IP
- Email
- Public Key Cryptography

## The Personal Computing (PC) Revolution and the World Wide Web (WWW) (1980-1999)
- PCs
- The Web
- Linux and Open Source

- Big Players: Lotus, Apple, Microsoft, Netscape, W3C


## Innovation Retreats to the Datacenters, aka. the Cloud (1999-2020): Web 2.0, the Peer to Peer Winter, the Social Web and the Cloud

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

## Re-Decentralization of the Web (2014-present)

_NB: While bitcoin was initially launched in 2009 it did not have mainstream impact until 2014 or later._

### Early Rumbles of a return to P2P

- P2P Data Backup: Tahoe-LAFS, Crashplan
- Efforts to decentralize social data: Diaspora, SoLID
- Bitcoin whitepaper and software released (2009)

### The Role of Bitcoin and Blockchains

- Bitcoin ended the P2P winter.
- Difference between p2p, decentralized web and blockchains
  - blockchains allow you to make verifiable public statements in a trustless environment
  - Examples of decentralized without blockchain: Peerpad, Patchwork
- Public Ledgers do have big potential
- Legitimacy - people believe in money

### The New Generation of Peer to Peer technologies
- git
- IPFS and dat
- matrix, patchwork, mastodon
- Encryption: Signal and Open Whisper Systems, keybase
- Ethereum
- The explosion of blockchains and blockchain-based stuff


# Why Decentralize?

Definitions:
- Internet vs. Web. Physical Layer, Application Layer, etc. HTTP
  - HTTP
  - TCP/IP
- Peer to Peer
- Immutable
- Merkle DAG
- Cryptography
- Cryptographic Hash
- Content-addressing
- Virtualized Computing
- Cloud Computing
- Cointainerization
- Operating System

Maybe define:
- JavaScript
- Protocol


Principles, in brief:
- Networked communication is a collective good operation of that network should be participatory
- Smartphones are supercomputers. We're treating them like thin clients
- the internet and the web must support people communicating without access to a faraway backbone -- this was one of the core design principles that drove creation of the internet
- If you rely on data you should be able to possess a copy of it
- Reach assertion: If someone holds data about you, you should be able to know and should be able to claim a copy of it [this assertion is actually meaningless in a centralized internet]
- When 2+ people have communication devices that are capable

## Restoring Social Interaction and Social Institutions

- Hijacking attention: our brains are wired to seek social connection. There's nothing inherently wrong with using technology to facilitate and even mediate our social interactions, but this becomes deeply harmful -- both psychologically and socially -- when we allow those interactions to be mediated by corporations and algorithms whose aim is to sell our attention.

Our brains are easy to hijack. We have deeply a ingrained drive to seek social connection and information. This drive, which is fundamentally healthy, leads us to open apps like Facebook, Twitter, Instagram, Tinder, or Grindr. Like flies to a venus flytrap, we find something sweet but really we've been captured. Even before the apps load, our brains start acting like the brains of addicts [CITATION]. We swipe up, swipe down, swipe left, swipe right, seeking information, love, comfort, humor, and expressing our wishes but our brains are acting like gamblers at a slot machine. The algorithms that decide which information to show us are optimized to keep us engaged. They are not optimized for maximum connectedness or genuine satisfaction. They are not designed to leave us thoroughly well informed or broadly engaged in social discourse. They are designed to keep us compulsively engaged. That's what an advertising-based companies like Facebook, Google or any of the others are obligated to do; designing for other outcomes must always be secondary to their primary profit motive: keeping you engaged so they can sell your attention.

Our failure to acknowledge this has eroded our psychological health [CITATION: depression rates, etc] and our social infrastructure, threatening the underpinnings of public discourse, democracy, and scientific discourse.

We must remedy this by changing the way we exchange information. We must remove the middle man. There is still a huge role for companies like Facebook and Google to filter, suggest, and enrich the data we consume, but we must break the pattern of allowing them to be the intermediaries between us and the world around us. The way we break this pattern is by changing _who has possession of the data_ ...

## Resilience: Making a Library that can't burn

holding a copy of the data you rely on, or the data you value

matrix of risk and value

Story: Data Rescue
- location-addressed infrastructure working at odds with the _intention_ of the data rescuers. Making copies == Creating Competition

Solution:
1. Content-addressing
2. Peer to Peer replication/Sharing
3. Coordination (pin sets, Allow lists and Deny lists)

## Offline-First:

My ability to communicate with the people around me should not be limited by my connectivity to the internet's backbone or my connectivity to a faraway server.
- sharing social data _is_ communication. sharing a photo is communication, editing a document is communication

Background: Interplanetary...

## Meeting the Demands of VR, Machine Learning and Internet of Things

Routing all these data through centralized systems simply doesn't make sense.

## "Web Scale" implies Participation

Original notion of web scale meant ... (participation by many, the participants are the infrastructure, which automatically scales with participation increasing/decreasing, CANT be centrally planned or controlled -- permissionless innovation...)

this idea has become lost, with web scale becoming an architectural strategy used _within_ centrally controlled "clouds" run by entities like Amazon, Google, Facebook, etc. "Web Scale" became a term for describing a particular approach to configuring datacenters, and a term for describing the design sensibilities baked into the applications and services that we run in those dataceters.  ... "Web-oriented architectures allow developers to build very flexible and resilient systems that recover from failure more quickly." [gartner]

**Citations**
- [Strategic Technology Trend: Web-Scale Singularity Means Goodbye to Conventional IT Wisdom](https://www.gartner.com/doc/2661319)


## Resisting Monopolies

### Resisting Data Monopolies
Example: Microsoft Word Documents vs. Facebook Posts

Story: My Personal Conundrum -- Any Platform that successfully gets people to create value is faced with the _financial obligation_ to exploit that value. Over a long trajectory, good intentions are irrelevant.

### Resisting Monopolistic Control of Connectivity

...



## Security & Privacy
- Feudal Security
  - Employees at those companies abuse their access (Uber, Facebook, etc)
  - Data breaches occur anyway, often kept secret: Equifax, Experian, Uber, etc.
- Strange behavior: distrusting government surveillance while trusting your privacy to corporations whose expressed purpose is to sell your attention. Apps on smartphones, and code injected into websites, are leaking personal data on a massive scale daily. This arrangement will persist until/unless users claim control over the possession of their data because the operators of those websites and apps are making money off that data.

If we shift to emphasizing a decentralized approach to data storage & data security, it will force us to pay attention to those leaks, which sheds a more nuanced light on the difference between centralized and decentralized approaches to data security.


## Protecting Civilian Infrastructure from Cyber Warfare

In [??? date] Bruce Schneier talked about state actors building electronic arsenals that would allow them to attack civilian infrastructure, crippling the economy and social services that their enemies rely on.

In 2016 we saw two examples of this: DDoS attach on the DNS system and wannacry. In both cases, attackers took down people's ability to access the information they rely on, with substantial economic rammifications.

The case of wannacry's impact on the NHS in England gives us a strong example of centralization failing people. Wannacry prevented hospitals from accessing patients' health records, effectively holding that information hostage. This invites the question: why don't patients have copies of their own health records? Likewise, if my bank's servers were attacked I would not have a verifiable copy of my account ledger. It's technically feasible for us to change this, allowing everyone to securely hold verifiable copies of health records, financial info, etc, so why are we relying on centralized points of failure? Does this make us vulnerable in ways that could be prevented?

This isn't a simple fix: decentralization broadens the potential vectors of attack, for better and for worse. It forces a shift from the feudal approach to data security to participatory approach. TODO


# Isn't the web already decentralized?

## Who gets to be a peer

## Possession
- opportunity to possess, capability of possession
- possess and exchange
  - redistribution ... unique copies
- digital captivity
- Stewardship ... Data Together



# How to build a Decentralized Web

## Preface: Overlay Networks
In order to understand how the internet actually works you must let go of the idea that the internet is a single thing or a single network.
Networks within networks & networks layered over networks

Key Example of an overlay network: Voice over IP, which developed at a time when most IP traffic was being sent over the old voice network. ... voice signal (audio) encoded as digital information, which was then encoded as audio signals, which were then sent over copper wires through physical infrastructure designed for voice traffic. Eventually (with the rise of optical fiber networks and wireless networks), which are designed for digital content, the networks became flipped -- phones now run over VoIP.

You need:
- "The Cables" Physical-layer Connectivity
- "The Receivers" Application-layer Connectivity: Networking Stack
- "The Rumor Mill; The Signaling Network" DHTs, Data Interchange (bitswap) & Routing
  - (Mavens and Connectors)
- "The Languages" - data structures
- "The Pubs and Libraries" -

## "The Wires" Physical-layer Connectivity

- Net Neutrality
- Municipal Networks ... crushed by telecoms spending billions of dollars to discredit the idea in the court of public opinion. Meanwhile, comcast resells its customers' wifi bandwidth.
- "Mesh" Networks
- Reference: Master Switch... independent radio, independent telephone operators, etc.

## "The Receivers" Application-layer Connectivity: Networking Stack

- libp2p
- Wire-level encryption

## "The Languages" - data structures and encryption

### Content-Addressing and Immutable, Authenticatable Data Structures

- IPFS Address Scheme vs. bittorrent address scheme

### Encryption: Controlling Access to Data

Capabilities-based Encryption
- Tahoe-LAFS
- keybase

Data Privacy, HIPAA, etc

### Merkle DAGs

### Interoprable Data Formats

- Why isn't Social Data reusable? ... SoLID
  - when I sign up for a new social media platform, why can't I import all my existing posts from other platforms? Email works that way (I can migrate my emails), why doesn't social media work that way?

## "The Signaling Network; The Rumor Mill" -- passing the data around with DHTs, Data Interchange (bitswap) & Routing

### Updates (aka. Mutable Data) -- allowing data to change over Time

Example: when I visit facebook, I'm dynamically loading information from their giant database. The contents of that giant database are constantly changing as people add new information. If we use a content-addressed approach, that means each address points to something immutable -- it can't change. Does that prevent us from having data that changes?
ANSWER: immutable data structures are actually the ideal way to handle data that changes rapidly...

- pubsub
- blockchain
- IPNS
- fall back on centralized (or semi-centralized) systems -- DNS, databases, etc.
- real-time feeds of data

### DHTs - providing and seeking pieces of the web-scale puzzle

- Use of DHT in IPFS vs DHT in bittorrent (Also see section on address schemes)

### Bitswap and Routing - passing the bits around

### (Mavens and Connectors)

### Reader Privacy

### Writer Privacy

### Censorship: Allowing, Denying, and Reinforcing Information



## Managing the Commons: Stewardship of Data and Networks

"The Pubs, the Libraries and the Archives" - ways of passing data around, accumulating data and stewardship of resources

### Finding Stuff: Search Engines, trustworthiness, search indexes as datasets


### Keeping Stuff: storing a copy of the data you rely on
  - Pinning, Pinsets, etc.
  - "Pubs"

### Stewardship: Reinstating the role of Libraries and Archives
  - family libraries, company archives, church archives, public libraries, university libraries, national libraries, etc.

# Who: People and Incentives

## Incentives, Game Theory, Nuclear War and the Internet

From the very first work on the internet, people have been thinking about game theory and incentives. While working on the initial version of ARPAnet, Rand Corp was also developing models for applying game theory to nuclear standoffs between the cold war superpowers. [NEED CITATION]

What do we mean by incentives?

What is game theory, what does it have to do with incentives?

Why is it so important to talk about incentives when talking about networks?

## Networks Tend to Become Monopolies, and are prone to become Regulated as Utilities
Tim Wu's work -- Master Switch, Net Neutrality, etc.

## Economic Models on the Decentralized Web (Economic Patterns in Decentralized Context)

## Open Source

## Cryptocurrencies and Protocol-incentivised Networks
