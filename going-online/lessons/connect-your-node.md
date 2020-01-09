# Lesson: Connect your node to the IPFS network

This lesson shows how to connect the IPFS node on your local computer to the IPFS network, or “_the swarm_”. Everything that you have done so far has been done locally. Now it gets a lot more interesting!

## Prerequisites
To do the steps in this lesson you must:
* Be familiar with using the command line
* [Install and Initialize IPFS](/install-ipfs/README.md) on your local machine

## Goals

After doing this Lesson you will be able to
* Start the IPFS daemon to connect your local node to the IPFS network

## Steps

### Step 1: Start the IPFS daemon

Start the IPFS daemon by running

```sh
$ ipfs daemon
```

You will see output from the daemon like the following:

```sh
Initializing daemon...
go-ipfs version: 0.5.0-dev-17e886e29
Repo version: 7
System version: amd64/linux
Golang version: go1.13.5
Swarm listening on /ip4/12.2.0.36/tcp/4001
Swarm listening on /ip4/127.0.0.1/tcp/4001
Swarm listening on /ip6/::1/tcp/4001
Swarm listening on /p2p-circuit
Swarm announcing /ip4/12.2.0.36/tcp/4001
Swarm announcing /ip4/127.0.0.1/tcp/4001
Swarm announcing /ip6/::1/tcp/4001
API server listening on /ip4/127.0.0.1/tcp/5001
WebUI: http://127.0.0.1:5001/webui
Gateway (readonly) server listening on /ip4/127.0.0.1/tcp/8080
Daemon is ready
```

### Step 2: Examine your ipfs node id info

Let's look at the details of your connections made by the daemon with `ipfs id`. Open up another command line and run:

```sh
$ ipfs id
{
	"ID": "QmRX....xQTp",
	"PublicKey": "CAAS....AAE=",
	"Addresses": [
		"/ip4/127.0.0.1/tcp/4001/ipfs/QmRX....xQTp",
		"/ip4/12.2.0.36/tcp/4001/ipfs/QmRX....xQTp",
		"/ip6/::1/tcp/4001/ipfs/QmRX....xQTp",
		"/ip6/2802:285:8360:da70::9191/tcp/4001/ipfs/QmRX....xQTp",
		"/ip6/2802:285:8360:da70:5146:9a0a:e910:19c3/tcp/4001/ipfs/QmRX....xQTp",
		"/ip6/2802:285:8360:da70:ccb4:bd10:baa3:d022/tcp/4001/ipfs/QmRX....xQTp",
		"/ip4/83.24.208.218/tcp/26521/ipfs/QmRX....xQTp"
	],
	"AgentVersion": "/go-ipfs/0.5.0-dev/17e886e29",
	"ProtocolVersion": "ipfs/0.1.0"
}
```
Note: The hashes above have been shortened for readability.

The "ID" field is your Peer ID, used to uniquely identify your node on the IPFS network. The "PublicKey" field goes along with your Peer ID, used under-the-hood by IPFS for public key cryptography. The "Addresses" shown are an array of IP addresses used for IPFS network traffic. Addresses using TCP port 4001 are known as "swarm addresses" that your local daemon will listen on for connections from other IPFS peers.

### Step 3: Shutdown the daemon

You may shut down the daemon by typing Ctrl-C in the command line that you started with:

```sh
...
Daemon is ready
^C
Received interrupt signal, shutting down...
(Hit ctrl-c again to force-shutdown the daemon.)
```

Note: You may run the IPFS daemon as a background process using the command `ipfs daemon &`. If you want to stop the background process just type `fg` (foreground) to bring that process to the foreground and stop it with Ctrl-C.

```sh
$ ipfs daemon &
pid 8469
$ Initializing daemon...
go-ipfs version: 0.5.0-dev-17e886e29
Repo version: 7
System version: amd64/linux
Golang version: go1.13.5
Swarm listening on /ip4/10.0.0.35/tcp/4001
...
Gateway (readonly) server listening on /ip4/127.0.0.1/tcp/8080
Daemon is ready
fg
ipfs daemon
^C
Received interrupt signal, shutting down...
(Hit ctrl-c again to force-shutdown the daemon.)
```

## Explanation

You run the IPFS daemon in order to have your local IPFS node become part of the IPFS network and listen to other IPFS peers.

## Next Lesson: Find Peers on the Network

Proceed to the next lesson to learn how to
[Find Peers on the Network](/going-online/lessons/find-peers.md)
