# Lesson: Modify Your Webpage and Republish to IPNS

This lesson shows you how to modify the simple webpage which you previously added to IPFS, and then how to republish that webpage to IPNS. 

## Goals

After doing this Lesson you will be able to
* View the simple webpage you created earlier and publish it to IPNS

## Steps

### Step 1: View your webpage using the IPFS hash

When you ran the command `ipfs add -r simple-webpage/` in the previous lesson, your output was similar to this:

```sh
added Qmd286K6pohQcTKYqnS1YhWrCiS4gz7Xi34sdwMe9USZ7u simple-webpage/cat.jpg
added QmNiBYXmgwLvT4xBiL8cX9j5H3AckiEjAnLZsoBiK6xEEr simple-webpage/index.html
added QmZhCL5rkWjH4MotDxKHUDaUESEKhTxSE7Xr16zwe59sjT simple-webpage
 432.98 KiB / 432.98 KiB [=============================================] 100.00%
```

The IPFS hash on the last line is the hash you will use to view your webpage. Note that your own hash may be different. Use your IPFS hash and open your webpage in the browser like so:

`https://ipfs.io/ipfs/QmZhCL5rkWjH4MotDxKHUDaUESEKhTxSE7Xr16zwe59sjT`

or

`https://ipfs.io/ipfs/your-hash`

You should see the "Nice Kitty" webpage from the previous lesson.

### Step 2: Publish your webpage to IPNS

Wonderful, now you have your webpage available via IPFS. But suppose you have decided to make a change to this webpage? The IPFS hash above will only ever point to this first version of your webpage. By using IPNS (the InterPlanetary Name System), you can create a hash that will not change, but you will make it point to your changing content found within IPFS. The IPNS hash will be tied to your Peer ID, and any changes in the future will also be tied to your Peer ID.

Run the following command (using your hash) to publish to IPNS:

```sh
$ ipfs name publish QmZhCL5rkWjH4MotDxKHUDaUESEKhTxSE7Xr16zwe59sjT
```
or
```sh
$ ipfs name publish your-hash
```

You should see output like the following:

```sh
Published to QmRXTMm77QKEE5JXdPGqxW4yQqdwUKHb6Quphxg1BdxQTp:
/ipfs/QmZhCL5rkWjH4MotDxKHUDaUESEKhTxSE7Xr16zwe59sjT
```

Note that the hash on the first line will be your Peer ID. Using IPNS, you have tied your Peer ID to the webpage that you added to IPFS earlier. You can confirm that your Peer ID is tied to that IPFS entry with the following command:


```sh
$ ipfs name resolve QmRXTMm77QKEE5JXdPGqxW4yQqdwUKHb6Quphxg1BdxQTp
```
or
```sh
$ ipfs name resolve your-peer-id
```
You should see output like the following:

```sh
/ipfs/QmZhCL5rkWjH4MotDxKHUDaUESEKhTxSE7Xr16zwe59sjT
```
or
```sh
/ipfs/your-hash
```

Now you will be able to view the webpage using an IPNS link with your Peer ID:

`https://ipfs.io/ipns/QmRXTMm77QKEE5JXdPGqxW4yQqdwUKHb6Quphxg1BdxQTp`

or

`https://ipfs.io/ipns/your-peer-id`

Note how the URL changes from `/ipfs/` to `/ipns/` once you publish to IPNS.

## Explanation

The IPFS hash for your webpage will always point to the exact same content, this is one of the fundamental ideas of the "Permanent Web". If you make changes to your webpage, then your new IPFS content will have a different hash. If you use IPNS to tie your webpage to your Peer ID, then you can make changes to your webpage and publish your URL using the IPNS hash.

## Next Steps

Proceed to the next lesson to learn how to [Modify Your Webpage and Republish to IPNS](/publishing-changes/lessons/modify-republish.md)
