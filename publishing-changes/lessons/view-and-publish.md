# Lesson: View Your Webpage with IPFS and Publish to IPNS

Work-In-Progress

This lesson shows you how to create a simple webpage and add it to IPFS. Once you are able to do this you can make your webpages as beautiful or complex as you would like, using the same basic commands.

## Prerequisites
To do the steps in this lesson you must:
* [Install and Initialize IPFS](/install-ipfs/README.md) on your local machine

## Goals

After doing this Lesson you will be able to
* Create a simple webpage and add it to IPFS

## Steps

### Step 1: Start the IPFS daemon

If the IPFS daemon is not running already, then start the daemon now

```sh
$ ipfs daemon
```

### Step 2: Create webpage directory and content

Create a new webpage directory in your user's home directory.

```sh
$ cd ~
$ mkdir simple-webpage
$ cd simple-webpage/
```

Download this nice kitten image using ipfs:
```sh
$ ipfs cat QmW2WQi7j6c7UgJTarActp7tDNikE4B2qXtFCfLPdsgaTQ/cat.jpg > cat.jpg
```

Using a text editor, create a file called `index.html` and copy/paste the following content:

```sh
<!DOCTYPE html>
<html>
<head>
  <title>Nice Kitty</title>
</head>
<body>
  <center>
  <h1>Nice Kitty</h1>
  <img src="cat.jpg">
  </center>
</body>
</html>
```

Save `index.html` in the `simple-webpage` directory and close the text editor. If you like, you may open `index.html` in the browser to see the webpage.

<img src="webpage4.png">

This simple webpage only has 2 files. Now you will add the `simple-webpage` directory to your local IPFS node:

```sh
$ cd ..
$ ipfs add -r simple-webpage/
```

You should see the following output:

```sh
added Qmd286K6pohQcTKYqnS1YhWrCiS4gz7Xi34sdwMe9USZ7u simple-webpage/cat.jpg
added QmNiBYXmgwLvT4xBiL8cX9j5H3AckiEjAnLZsoBiK6xEEr simple-webpage/index.html
added QmZhCL5rkWjH4MotDxKHUDaUESEKhTxSE7Xr16zwe59sjT simple-webpage
 432.98 KiB / 432.98 KiB [=============================================] 100.00%
```

Notice that you used the command `ipfs add -r` where the `-r` option tells IPFS to recursively add the contents of the directory to your local IPFS node.

## Explanation

You can work on a webpage locally and then add it to your IPFS node. When you add your webpage directory content to IPFS, you use `ipfs add` with the `-r` option to recursively add all of the files within the directory to IPFS.

## Next Steps

Proceed to the next lesson to learn how to [View Your Webpage with IPFS and Publish to IPNS](/publishing-changes/lessons/view-and-publish.md)
