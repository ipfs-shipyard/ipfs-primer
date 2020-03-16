# Lesson: Find Peers on the Network

This lesson shows how to find and examine the peers you connect to on the IPFS network. You will use the `ipfs swarm`  and `ipfs id` tools for this purpose. The swarm is the component that opens, listens for, and maintains connections to other IPFS peers. You can also examine connected peers and the network using the Web UI.

## Prerequisites
To do the steps in this lesson you must:
* Be running the `ipfs daemon`

## Goals

After doing this Lesson you will be able to
* Find and examine peers on the IPFS network

## Steps

### Step 1: Start the IPFS daemon

Start the IPFS daemon by running

```sh
$ ipfs daemon
```

### Step 2: Find peers that we are connected to

You can use the command `ipfs swarm peers` to examine for connected peers:

```sh
$ ipfs swarm peers
/ip4/147.75.69.143/tcp/4001/ipfs/QmNn....GAJN
/ip4/147.75.83.83/tcp/4001/ipfs/QmbL....75Nb
/ip4/147.75.85.167/tcp/4001/ipfs/QmXA....qhfW
/ip6/2604:1380:0:c100::1/tcp/4001/ipfs/QmQC....uLTa
/ip6/2604:1380:3000:1f00::1/tcp/4001/ipfs/QmcZ....3dwt
/ip6/2604:1380:40b0:c00::3/tcp/4001/ipfs/QmYA....yYdN
```

### Step 3: Examine a connected peer

You will use the `ipfs id <hash>` command to examine a connected peer:

```sh
$ ipfs id Qmf1...mx36
{
	"ID": "Qmf1....mx36",
	"PublicKey": "CAAS....AAE=",
	"Addresses": [
		"/ip4/127.0.0.1/tcp/4001",
		"/ip6/::1/tcp/4001",
		"/ip4/134.215.4.214/tcp/4001"
	],
	"AgentVersion": "go-ipfs/0.4.21/8ca278f45",
	"ProtocolVersion": "ipfs/0.1.0"
}
```

Note: The "ID" field shown above is the Peer's ID, and this was also the hash that was shown when you ran `ipfs swarm peers`. Peers are identified on the network directly by their Peer ID.

### Step 4: Examine using the Web UI

The IPFS daemon also serves up a modern Web UI that you are able to open in a browser. Did you notice when you started the daemon that there was the following?

WebUI: http://127.0.0.1:5001/webui

Open the link above in your browser. You will see the Web UI displayed with sections on Status, Files, Explore, Peers, and Settings. Click on the Peers section and you will see a world map indicating the location of connected peers. Scroll down the page to see information on each of the peers, their country/city location, network latency, Peer ID, etc. Spend some time looking at the other different sections of the Web UI.

## Explanation

Once you have connected to the IPFS network by running the daemon, other IPFS nodes (peers) will begin to connect and communicate with your node. Using the commands `ipfs swarm` and `ipfs id` allows you to examine the connected nodes. The Web UI also shows in-depth information about peers.

## Next Lesson: Retrieve content from a Peer

Proceed to the next lesson to learn how to
[Retrieve content from a Peer](/going-online/lessons/retrieve-from-peer.md)
