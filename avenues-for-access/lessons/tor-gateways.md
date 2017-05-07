# Lesson: Access IPFS through Tor gateways (experimental)

## Goals

This lesson covers accessing IPFS content through Tor gateways.

After doing this Lesson you will be able to  
* Use the Tor browser and a public IPFS gateway on the Tor network to access IPFS content

## Steps

### Step 1: Download the Tor browser

If you do not already have the Tor browser installed, download the Tor browser from the Tor project by visiting https://www.torproject.org/projects/torbrowser.html.en

In some countries the Tor Project website is blocked or censored and it is not possible to download Tor directly. The Tor Project also hosts a mirror of [Tor Browser Bundle on Github](https://github.com/TheTorProject/gettorbrowser).

The [GetTor](https://www.torproject.org/projects/gettor) service can also be used to download Tor Browser when the Project website and mirrors are blocked.

### Step 2: Request the content you want from the IPFS-Tor gateway

`ipfs4uvgthshqonk.onion` is a volunteer-run IPFS Gateway on the Tor network. You will use this gateway to request IPFS content.
_(Warning: The IPFS project does not run this gateway. We cannot guarantee stability or security.)_ There are probably many other IPFS gateways on the Tor network. You can use any of them in this way -- simply replace `ipfs4uvgthshqonk.onion` with the name of the gateway you're trying to access.

With the Tor browser running, enter the hash of the IPFS content you want to retrieve. This part is the same as [using any other IPFS gateway](/avenues-for-access/lessons/other-gateways.md) -- only the address of the gateway is different: If you're using the hash of a specific snapshot of content, use the path `https://ipfs4uvgthshqonk.onion/ipfs/<your-ipfs-hash>`. If you're using an IPNS hash to get the _latest_ version of some content, use the path `https://ipfs4uvgthshqonk.onion/ipns/<your-ipns-hash>`

To view the wikipedia page we're using as an example in all of the lessons in the [Tutorial on Avenues for Access](/avenues-for-access/), use these links:

- 2017-04-30 snapshot: https://ipfs4uvgthshqonk.onion/ipfs/QmezTdYeKyjPFoREStJQQbvATUP8yRJdHMMZx2rZ86p9g9/wiki/Anasayfa.html
- latest (IPNS): https://ipfs4uvgthshqonk.onion/ipns/QmQP99yW82xNKPxXLroxj1rMYMGF6Grwjj2o4svsdmGh7S/wiki/Anasayfa.html
- latest (DNS): https://ipfs4uvgthshqonk.onion/ipns/wikipedia-on-ipfs.io

- (you can verify it works with [onion.link](https://onion.link))

## Explanation

This approach relies on the IPFS gateway at `ipfs4uvgthshqonk.onion` to retrieve content from the IPFS network for you. The difference with this gateway, as opposed to the gateways at ipfs.io, is that it's listening for requests directly over Tor protocol. This allows you to access the gateway anonymously.

## Next Steps

Read about how you can [configure an IPFS node to use the Tor transport](/avenues-for-access/tor-transport.md) or return to the [Tutorial on Avenues for Access](/avenues-for-access/) to learn about the many other ways you can use IPFS to access the same content using the same content-addressed link.
