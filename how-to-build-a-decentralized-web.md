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

## Protecting People: Public Speech, Private Communications, and Malicious Actors

### Reader Privacy

### Writer Privacy

### Censorship: Allowing, Denying, and Reinforcing Information
