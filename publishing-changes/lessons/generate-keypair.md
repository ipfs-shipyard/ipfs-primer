# Lesson: Generate and Use a New IPNS Name Keypair

This lesson shows you how to generate an new name keypair and use it to publish a different IPNS webpage than your original Peer ID. 

## Goals

After doing this Lesson you will be able to
* Generate a new name keypair and use it along with IPNS.

## Steps

### Step 1: Generate a new name keypair

Imagine that you want to create a new name keypair called "trains". Run the following command:

```sh
$ ipfs key gen --type=rsa --size=2048 trains
```

Output should be a hash similar to the following:

```sh
QmexZbauipkBBrV8vZv8WjeYe8F7ojCm4UZXuAhxk5vFF1
```

Now you might list the keys that you have on your local node:

```sh
$ ipfs key list
self
trains
```

Note that "self" is the default name for the keypair of your Peer ID. This keypair is used when you `ipfs name publish` without specifying the name.

### Step 2: Create new webpage directory and content

Create a new webpage directory in your user's home directory for trains.

```sh
$ cd ~  (or cd %userprofile% on Windows)
$ mkdir trains-webpage
$ cd trains-webpage/
```

Download 2 train images using ipfs:

``` sh
$ ipfs cat QmXoypizjW3WknFiJnKLwHCnL72vedxjQkDDP1mXWo6uco/I/m/MNRR_maintenance_train_at_Beacon.jpg > train1.jpg
$ ipfs cat QmXoypizjW3WknFiJnKLwHCnL72vedxjQkDDP1mXWo6uco/I/m/New_Jersey_Transit_train_53_to_Port_Jervis.jpg > train2.jpg
```

Using a text editor, create a file called `index.html` and copy/paste the following content:

```sh
<!DOCTYPE html>
<html>
<head>
  <title>Trains</title>
</head>
<body>
  <h1>Trains</h1>
  <img src="train1.jpg">
  <img src="train2.jpg">
</body>
</html>
```

Save `index.html` in the `trains-webpage` directory and close the text editor. If you like, you may open `index.html` in the browser to see the webpage.

<img src="trains.jpg">


### Step 3: Add your webpage to IPFS and IPNS

Now you can add your `trains-webpage` directory to IPFS

```sh
$ cd ..
$ ipfs add -r trains-webpage/
```

You should see output like the following:

```sh
added QmWq1TLwLiem1R66oDGeqgvNhVqMQp2pTH45ccMDKgqiSD trains-webpage/index.html
added QmRiSPSMK1nC3adhL1N1o2CWLGve6iUMijikmsVbAh5gt4 trains-webpage/train1.jpg
added QmZqx5XsHhU5qGoWXPgqa8EHRh8JRCCCQPudp1MJcVERTG trains-webpage/train2.jpg
added QmTVgwpmruEWN8Dyx71FnBzymxfs8B5qV9Wuy8W4NZehPB trains-webpage
 13.97 KiB / 13.97 KiB [===============================================] 100.00%
```

You now know from the earlier lessons that you can view your webpage by using the hash from the last line above (Note that your own hash may be different):

`https://ipfs.io/ipfs/QmTVgwpmruEWN8Dyx71FnBzymxfs8B5qV9Wuy8W4NZehPB`

Now you can publish your trains webpage to IPNS **using your new "trains" keypair** with the hash of the trains-webpage/ directory:

```sh
$ ipfs name publish --key=trains QmTVgwpmruEWN8Dyx71FnBzymxfs8B5qV9Wuy8W4NZehPB
```
You should see output like the following:

```sh
Published to QmexZbauipkBBrV8vZv8WjeYe8F7ojCm4UZXuAhxk5vFF1:
/ipfs/QmTVgwpmruEWN8Dyx71FnBzymxfs8B5qV9Wuy8W4NZehPB
```

Note that the "Published to" hash above is the new name keypair "trains" hash that you created at the top of this page.

View the new webpage using the IPNS link with your "trains" hash:

`https://ipfs.io/ipns/QmexZbauipkBBrV8vZv8WjeYe8F7ojCm4UZXuAhxk5vFF1`

Use the same procedure that you learned earlier to update this webpage, add to IPFS, and republish to IPNS.

## Explanation

At any time you like you may generate a new name keypair to use with IPFS/IPNS work. This will allow you to work with multiple keypairs other than your primary Peer ID.

## Next Steps
Next, proceed to the [Merkle Trees and the IPFS DAG](../../ipfs-dag/README.md) tutorial.
