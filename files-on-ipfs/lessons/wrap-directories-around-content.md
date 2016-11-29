# Lesson: Wrap Filenames and Directory Info around Content in IPFS

## Goals
After doing this Lesson you will be able to    
* Add a file to IPFS, including its filename, permissions, etc.
* Add directories to IPFS
* Explain how IPFS represents two files that have identical content
* Read content out of IPFS using the hash of a directory that contains the file

## Steps

### Step 1: Create the file you're going to add
<div class="alert alert-info">
You may already have this file from the previous lesson. If you do, make sure the content of the file matches. Otherwise the hashes you get won't match the examples in this lesson.
</div>

Create a file called `mytextfile.txt` and put the text "version 1 of my text" in it. One easy way to do this on the command line is with this command:

```sh
$ echo "version 1 of my text" > mytextfile.txt
```

### Step 2: Add the file to IPFS

```sh
$ ipfs add -w mytextfile.txt
added QmZtmD2qt6fJot32nabSP3CUjicnypEBz7bHVDhPQt9aAy mytextfile.txt
added QmPvaEQFVvuiaYzkSVUp23iHTQeEUpDaJnP8U7C3PqE57w
```

In the previous lesson, when we ran `ipfs add mytextfile.txt` without the `-w` flag, ipfs only returned one hash.  This time it returned two hashes. The first hash `QmZtmD2...` is the same as before -- it's the hash of the content _inside_ the file. The second hash `QmPvaEQF...` is the hash of the directory and filename information that ipfs "wrapped" around our content.

In the next steps, we will use ipfs commands to see what that directory and filename information looks like and how we can use it.

### Step 3: List the directory information

The `-w` flag tells ipfs to include the directory and filename information it "wraps the file in a directory.".  For more info about this, run `ipfs add --help` and read the description there.

To list this directory and filename information, use `ipfs ls`. We will use the `-v` flag to include header information. To learn more about this command, run `ipfs ls --help`

```sh
$ ipfs ls -v QmPvaEQFVvuiaYzkSVUp23iHTQeEUpDaJnP8U7C3PqE57w Hash                                           Size Name
QmZtmD2qt6fJot32nabSP3CUjicnypEBz7bHVDhPQt9aAy 29   mytextfile.txt
```

This command `ipfs ls QmPvaEQFVvuiaYzkSVUp23iHTQeEUpDaJnP8U7C3PqE57w` translates to "list the files referenced by the directory whose hash is QmPvaEQFVvuiaYzkSVUp23iHTQeEUpDaJnP8U7C3PqE57w".

The response shows that the directory contains one file -- "mytextfile.txt" -- and the hash of that file's content is `QmZtmD2q...`

<div class="alert alert-info">
Note that we had to use `ipfs ls` instead of `ipfs cat` to read this info because it's a directory. If you try to read the directory using `ipfs cat` you will get an error:

```sh
$ ipfs cat QmPvaEQFVvuiaYzkSVUp23iHTQeEUpDaJnP8U7C3PqE57w
Error: this dag node is a directory
```
</div>


### Step 4: Read the File's contents using the parent directory's hash

We can use the directory's hash to read the file's content like this:

```sh
$ ipfs cat QmPvaEQFVvuiaYzkSVUp23iHTQeEUpDaJnP8U7C3PqE57w/mytextfile.txt
version 1 of my text
```

This command translates to "return the content that's referred to as `mytextfile.txt` within the directory whose hash is QmPvaEQFVvuiaYzkSVUp23iHTQeEUpDaJnP8U7C3PqE57w"

## Bonus Steps

Some things to try:

 1. Create a directory with multiple files. Tell ipfs to recursively add the directory and all of its files.
 2. Create two different files with the same content. Add them both to ipfs with `ipfs add -w` and confirm that ipfs is re-using the hash of that content when it builds the directory and filename information.

## Explanation

When you add a file to your ipfs repository, ipfs calculates the cryptographic hash of the file's contents and returns that hash to you. You can then use the hash to reference the file's contents and read them back out of the ipfs repository.  

In order to keep track of information like filenames and paths, ipfs lets you "wrap" directory and filename information around the file contents you've added. That directory and filename information has its own hashes, which makes it possible to retrieve content from the ipfs repository using "ipfs paths" that are a combination of hashes, filenames and directory names.

## Next Steps

Next, learn how to [Tell IPFS to Keep a File](pin-files.md)
