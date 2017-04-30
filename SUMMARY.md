# Table of Contents
1. [Table of Contents](SUMMARY.md)
2. [Tutorial: Install and Initialize IPFS](/install-ipfs/README.md)
  1. [Lesson: Download and Install IPFS](/install-ipfs/lessons/download-and-install.md)
  2. [Lesson: Initialize your IPFS Repository](/install-ipfs/lessons/initialize-repository.md)

2. [Tutorial: Files on IPFS](files-on-ipfs/README.md)
  1. [Lesson: Add Content to IPFS and Retrieve It](/files-on-ipfs/lessons/add-and-retrieve-file-content.md)
  2. [Lesson: Wrap Filenames and Directory Info around Content](/files-on-ipfs/lessons/wrap-directories-around-content.md)
  3. [Lesson: Pinning - Tell IPFS to Keep a File](/files-on-ipfs/lessons/pin-files.md)

3. [Tutorial: Going Online - Joining the Distributed Web](/going-online/README.md)
  1. Lesson: Publish your node on the IPFS network
  2. Lesson: Find Peers on the Network
  3. Lesson: Retrieve content from a Peer

4. [Tutorial: Interacting with the Classical (HTTP) Web](/classical-web/README.md)
  1. Lesson: Use an HTTP browser to retrieve files from local IPFS node
  2. Lesson: Get your own files through the ipfs.io gateway
  3. Lesson: Map DNS to IPNS
  4. Lesson: Streaming Video over IPFS

5. [Tutorial: The Myriad ways to Access and Distribute IPFS Content](/avenues-for-access/)
  1. [Review: Accessing content through your local IPFS node](/avenues-for-access/lessons/local-node.md)
  2. [Using the public IPFS gateways at ipfs.io](/avenues-for-access/lessons/public-gateways.md)
  3. [Rely on other gateways](/avenues-for-access/lessons/other-gateways.md)
  4. [Access IPFS through Tor (experimental)](/avenues-for-access/lessons/tor.md)
  5. [Access IPFS through a browser extension](/avenues-for-access/lessons/browser-extension.md)
  6. [Sneakernets - moving the data on USB Drives and other Hardware](/avenues-for-access/lessons/sneakernets.md)
  7. [Implications of all these options](/avenues-for-access/lessons/implications.md)

5. [Tutorial: Publishing Changes on the Permanent Web](publishing-changes/README.md)
  1. Lesson: Set up IPNS on your IPFS Node
  2. Lesson: Create an IPNS entry that points to your file
  3. Lesson: Modify your File and add the modified version to IPFS
  4. Lesson: Update the IPNS entry to point to the new version

6. Privacy and Access Controls on the Distributed Web
  1. Reader Privacy & Writer Privacy
  2. Private Networks
  3. Encrypting Content
  4. More dynamic encryption: capabilities-based encryption
  4. Comparing with the classic HTTP web (feudal security, etc)

7. Keeping Data Alive: Durable Data on the Permanent Web
  1. IPFS Cluster
  2. Filecoin

6. [Tutorial: Merkle Trees and the IPFS DAG](ipfs-dag/README.md)
  1. [Lesson: Turn a file into a tree of hashes](/ipfs-dag/lessons/files-as-dags.md)
  2. Lesson: Create a cryptographic hash
  3. [Lesson: Build a tree of data in IPFS using cryptographic hashes to link the pieces (a Merkle DAG)](/ipfs-dag/lessons/blocks-from-scratch.md)
  4. Lesson: Explore the types of software that use hash trees to track data

7. [Tutorial: Dynamic Content on IPFS](/dynamic-content/README.md)
  1. Disclaimer: Dynamic content on IPFS is a Work in Progress
  2. Lesson: Add data to the DAG (locally)
  3. Lesson: Tell peers about your Changes
  4. Lesson: Use hashes to get someone's changes from IPFS
  5. Lesson: Use a pub/sub strategy to pass around messages about changes
  6. Lesson: Resolve conflicts with a merge strategy (CRDTs)

8. Distributed Computation
