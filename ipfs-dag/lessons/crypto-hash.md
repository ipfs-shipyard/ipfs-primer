# Lesson: The Cryptographic Hash

## Goals
* Learn about cryptographic hashes, their history and characteristics

## Characteristics of cryptographic hashes

Cryptographic hashes are seen as long strings of alphabetic and numeric data. They are created by having data presented as input to a _cryptographic hash function_, which processes that data and writes out a hash value, or checksum. The input data may be of arbitrary length, but the ouput hash is always of a fixed length.

Cryptographic hashes have a number of very important characteristics:
* **Deterministic** - the same input message always returns exactly the same output hash
* **Uncorrelated** - a small change in the message should generate a completely different hash
* **Unique** - it’s not possible to generate the same hash from two different messages
* **One-way** - it’s not possible to guess or calculate the input message from its hash

Let's examine these characteristics:

**Deterministic:** So long as you use the same cryptographic hash function, you will always get the exact same output hash value for the same input data. This allows you to verify the authenticity of the data that you might have in a file, for example. If two files have the same output hash when processed with the same cryptographic hash function, then the data can be believed to be identical.

**Uncorrelated:** A small change to the input data should generate a completely different hash. In this way the two hashes should appear uncorrelated. You can demonstrate this for yourself on the command line:

```sh
$ echo "Abracadabra!" | ipfs add
added QmWyVG3yhEu8o6EMbUTxcFdzSkddN2NobJye1LhuNajaxy
$ echo "abracadabra!" | ipfs add
added QmdFyNVLCtWxyJDr9osNWMoY6CrnDQQRT8Ypa6MBpkjap3
```

Notice the huge difference in the two hashes above. By changing the first character 'A' to lower-case 'a', the hash function generated very different output.

**Unique:** It's not possible to generate the same hash from two different messages. This is a characteristic of a well-built, robust cryptographic hash function. It is possible that some hash functions can derive the same hash for different messages, and this is called a _hash collision_. Hash functions have evolved over time, primarily due to vulnerabilities and weaknesses that were found. Modern cryptographic hash functions are known for _strong collision resistance_. Much work has been put into the attacking of cryptographic hash functions in particular, as they are considered key building blocks of modern cryptography.

**One-way:** It’s not possible to guess or calculate the input message from its hash. In other words, you cannot reverse or invert a hash function to obtain the original message that it was computed from. Hence, a cryptographic hash function is considered a _one-way function_. Brute-force attack methods sometimes are used to try to find a message that matches a given hash. The use of rainbow tables (pre-computed values from known inputs) is another common attack.

## History of cryptographic hashes

**MD5:** Designed by Ron Rivest in 1991 to replace an earlier hash function MD4. "MD" stands for "Message Digest". Produces a hash of 128 bits (16 bytes). Suitable for non-cryptographic uses, such as basic data integrity. Collisions against MD5 can be calculated within seconds which makes the algorithm unsuitable as a cryptographic hash. 

**SHA-1:** Developed as part of the U.S. Government's Capstone project. The original specification of the algorithm was published in 1993. "SHA" stands for "Secure Hash Algorithm". Produces a hash of 160 bits (20 bytes). Collisions against SHA-1 have been produced and this hash function should be considered broken.

**SHA-2:** Designed by the United States National Security Agency (NSA), first published in 2001. SHA-2 basically consists of two hash algorithms: SHA-256 and SHA-512. SHA-512 is more secure than SHA-256. There are a number of variants of both algorithms. SHA-256 produces a hash of 256 bits (32 bytes) and SHA-512 produces a hash of 512 bits (64 bytes).

**SHA-3:** Released by NIST in 2015. SHA-3 is a subset of the broader cryptographic primitive family Keccak. SHA-3 has the same output sizes as SHA-2: 224, 256, 384 and 512 bits.

[Read more on Cryptographic Hash Functions](https://en.wikipedia.org/wiki/Cryptographic_hash_function)

## Next Steps

Next, learn how to [Build a Tree of Data in IPFS Using Cryptographic Hashes to Link the Pieces (a Merkle DAG)](/ipfs-dag/lessons/blocks-from-scratch.md)

