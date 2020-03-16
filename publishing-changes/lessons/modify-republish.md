# Lesson: Modify Your Webpage and Republish to IPNS

This lesson shows you how to modify the simple webpage which you previously added to IPFS, and then how to republish that webpage to IPNS. 

## Goals

After doing this Lesson you will be able to
* Modify any webpage that you have within IPFS and republish your new webpage to IPNS.

## Steps

### Step 1: Modify your existing webpage

You will be working again in the `simple-webpage` directory:

```sh
$ cd ~ (or cd %userprofile% on Windows)
$ cd simple-webpage/
```

Using the text editor, open the `index.html` file in the `simple-webpage` directory and copy/replace with the following text:

```sh
<!DOCTYPE html>
<html>
<head>
  <title>Nice Kitty Update</title>
</head>
<body>
  <center>
  <h1>Nice Kitty Update</h1>
  <h2>This is the updated version of our Nice Kitty webpage.</h2>
  <img src="cat.jpg">
  </center>
</body>
</html>
```

Save `index.html` in the `simple-webpage` directory and close the text editor.

Add another level of complexity with one more HTML file in the `simple-webpage` directory. Using the text editor, copy/paste the following text:

```sh
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>SECRET</title>
</head>
<body>
This is our SECRET html file, no one will<br>
ever know that we have hidden this here!
</body>
</html>
```

Save this as `secret.html` in the `simple-webpage` directory and close the text editor.

### Step 2: Add your updated webpage to IPFS

Run the following commands to update your webpage to IPFS:

```sh
$ cd ..
$ ipfs add -r simple-webpage/
```

You should see output like the following:

```sh
added Qmd286K6pohQcTKYqnS1YhWrCiS4gz7Xi34sdwMe9USZ7u simple-webpage/cat.jpg
added QmWRijdpZxJVhbUdEmvt2xD4GdCns3EVmTLBRXrJusNmGf simple-webpage/index.html
added QmPx2wNJK3tT5AMPuZwjNAMUkVyR1UB8UYAxx4QmLZovtx simple-webpage/secret.html
added QmXw1gREZvLbNtpEfSCA6cP8SgwhMkbPJrkC93A97uXHqf simple-webpage
 433.27 KiB / 433.27 KiB [=============================================] 100.00%
```

Because the content in the `simple-webpage` directory has been changed, the final hash for the directory is now different. You might notice that the hash for `cat.jpg` has not changed, as no changes were made to that file.

The IPFS hash on the last line is the hash you will use to view your webpage. Note that your own hash may be different. Use your IPFS hash and open your webpage in the browser like so:

`https://ipfs.io/ipfs/your-webpage-hash`

You should see the "Nice Kitty Update" webpage. Also try to access the `secret.html` webpage:

`https://ipfs.io/ipfs/your-webpage-hash/secret.html`

And now you can republish your updated webpage to IPNS:

```sh
$ ipfs name publish your-webpage-hash
```
You should see output like the following:

```sh
Published to QmRX....xQTp: (your peer id)
/ipfs/QmZh....your-webpage-hash....9sjT
```

So you can see that when you republish the updated IPFS webpage to IPNS, it will again tie your Peer ID to your updates. This is the power of being able to use IPNS to point to your updated webpage.

View the updated webpage using the IPNS link with your Peer ID:

`https://ipfs.io/ipns/your-peer-id`

and also view the `secret.html` webpage:

`https://ipfs.io/ipns/your-peer-id/secret.html`

## Explanation

The IPFS hash of your webpage changes every time you make a update to the webpage. By using `ipfs name publish` you can republish your webpage using IPNS, which will use the same hash every time, tied to your Peer ID. In this way you can distribute your IPNS link with your Peer ID, and anyone accessing your webpage with this link will get the most current version when you republish.

## Next Steps

Proceed to the next lesson to learn how to [Generate and Use a New IPNS Name Keypair](/publishing-changes/lessons/generate-keypair.md)
