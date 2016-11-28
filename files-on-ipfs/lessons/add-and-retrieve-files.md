# Lesson: Adding Files to IPFS and Retreiving Them

## Goals
After doing this Lesson you will be able to    
* Add a file to IPFS
* Read a file's content out of IPFS using its hash
* Read content out of IPFS using the hash of a directory that contains the file

## Steps

### Step 1: Download the file

Download [this file](https://github.com/flyingzumwalt/decentralized-web-primer/raw/master/samples/sample-text-file.txt)

Save the file as `sample-text-file.txt`. The contents of the file look like this:

```
This is some sample text.
... and a second line.
```

### Step 1: Add the file to IPFS

```sh
$ ipfs add -w sample-text-file.txt
added QmYqxZxpuNgEMGXHjAoPbQx5nTuFAc4nEk4qnf7wU6STzJ sample-text-file.txt
added QmaLLCuRGVAXXJQu8FjdxqxWro871zXeL7qrAdBFcSjxH3
```

The `-w` flag tells ipfs to include the directory and filename information it "wraps the file in a directory.".  For more info about this, run `ipfs add --help` and read the description there.

The response from ipfs includes two hashes. In the next steps, we will use ipfs commands to see what those hashes point to.

<div class="alert alert-info">
If you got different hashes in the response when you ran `ipfs add -w sample-text-file.txt`, try downloading the file again. The file contents and the file name must match exactly in order for you to get the same hashes.
</div>

### Step 2: Read the File's contents using its hash

The first hash `QmYqxZxpuN...` is the hash of your file's _content_. You can read that content using the `ipfs cat` command.

```sh
$ ipfs cat QmYqxZxpuNgEMGXHjAoPbQx5nTuFAc4nEk4qnf7wU6STzJ
This is some sample text.
... and a second line.
```

This command translates to "return the content whose hash is QmYqxZxpuNgEMGXHjAoPbQx5nTuFAc4nEk4qnf7wU6STzJ"

Note that this just returns the content -- there's no filename. The filename is stored in the directory info that ipfs "wrapped" around the content. In the next step we'll look at how to reference file content using the directory's hash.

### Step 3: Read the File's contents using the parent directory's hash

The second hash `QmaLLCuRGV...` is the hash of the _directory and filename information_ that ipfs "wrapped" around the file content.

We can use that hash to read the file's content like this:

```sh
$ ipfs cat QmaLLCuRGVAXXJQu8FjdxqxWro871zXeL7qrAdBFcSjxH3/sample-text-file.txt
This is some sample text.
... and a second line.
```

This command translates to "return the content that's referred to as `sample-text-file.txt` within the directory whose hash is QmaLLCuRGVAXXJQu8FjdxqxWro871zXeL7qrAdBFcSjxH3"

### Step 4: List the directory information

To list this directory and filename information, use `ipfs ls`

```sh
$ ipfs ls QmaLLCuRGVAXXJQu8FjdxqxWro871zXeL7qrAdBFcSjxH3
QmYqxZxpuNgEMGXHjAoPbQx5nTuFAc4nEk4qnf7wU6STzJ 57 sample-text-file.txt
```

This command translates to "list the files referenced by the directory whose hash is QmaLLCuRGVAXXJQu8FjdxqxWro871zXeL7qrAdBFcSjxH3"

Note that we had to use `ipfs ls` instead of `ipfs cat` to read this info because it's a directory. If you try to read the directory using `ipfs cat` you will get an error:

```sh
$ ipfs cat QmaLLCuRGVAXXJQu8FjdxqxWro871zXeL7qrAdBFcSjxH3
Error: this dag node is a directory
```

## Bonus Steps

Some things to try:

 1. Create a directory with multiple files. Tell ipfs to recursively add the directory and all of its files.
 2. Add a file to ipfs, change the file, and then add it again. Compare the two hashes and use `ipfs cat` to read the different versions of the file out of ipfs.

## Explanation

When you add a file to your ipfs repository, ipfs calculates the cryptographic hash of the file's contents and returns that hash to you. You can then use the hash to reference the file's contents and read them back out of the ipfs repository.  

In order to keep track of information like filenames and paths, ipfs lets you "wrap" directory and filename information around the file contents you've added. That directory and filename information has its own hashes, which makes it possible to retrieve content from the ipfs repository using "ipfs paths" that are a combination of hashes, filenames and directory names.

## Next Steps

Next, learn how to [Tell IPFS to Keep a File](pin-files.md)
