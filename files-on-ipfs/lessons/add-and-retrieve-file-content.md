# Lesson: Add Content to IPFS and Retrieve It

## Goals
After doing this Lesson you will be able to    
* Add a file's content to IPFS
* Read content out of IPFS using its hash
* Explain the relationship between IPFS hashes and the content you've added

## Steps

### Step 1: Create a file that you will add to IPFS

<div class="alert alert-info">
You can add any type of content to IPFS. For this lesson we will put some text content into a `.txt` file, but you can do this same process with any content or any file.
</div>

It would be a good idea to make a new directory for this example. Navigate to somewhere you are comfortable putting a new folder (such as `~/Desktop`), and then create a new directory and go into it. Here is an example command:

```sh
$ cd ~/Desktop
$ mkdir ipfs-tutorial
$ cd ipfs-tutorial
```

Now, create a file called `mytextfile.txt` and put the text "version 1 of my text" in it. One easy way to do this on the command line is with this command:

```sh
$ echo "version 1 of my text" > mytextfile.txt
```

You can read the file's contents using the `cat` command:

```sh
$ cat mytextfile.txt
version 1 of my text
```

### Step 2: Add the File to IPFS

```sh
$ ipfs add mytextfile.txt
added QmZtmD2qt6fJot32nabSP3CUjicnypEBz7bHVDhPQt9aAy mytextfile.txt
```

Save the hash `QmZtmD2qt...` that ipfs returned. This is the content's cryptographic hash. If the file's content changes, the hash will change, but if the file's content remains the same, the hash will always be the same.

Bear in mind that if you're not [running the daemon](/going-online/lessons/connect-your-node.md#step-1-start-the-ipfs-daemon), it will just add locally. If you start the daemon later, the blocks will be advertised after a few seconds when the reprovider runs.

### Step 3: Read the content out of IPFS

Just like the regular `cat` command lets you read the contents of a file, the `ipfs cat` command lets you read the contents of a file that has been added to ipfs.

Use the `ipfs cat` command to read the content by passing it the content's cryptographic hash -- this is the hash that ipfs returned when you ran `ipfs add mytextfile.txt`.

```sh
$ ipfs cat QmZtmD2qt6fJot32nabSP3CUjicnypEBz7bHVDhPQt9aAy
version 1 of my text

```

Notice that this returned the _content_ of the file, not the text file itself.  That's because `QmZtmD2qt...` is the hash of the content, not the file itself. We'll test that in the next step.

### Step 4: Confirm that the hash points to the content, not the file

When you used `ipfs cat` to read the file's contents it returned the _content_ of the file, not the text file itself.  That's because the hash `QmZtmD2qt...` is the hash of the _content_.  You can test that by adding the text content directly to IPFS without ever putting it in a file.


```sh
$ echo "version 1 of my text" | ipfs add
added QmZtmD2qt6fJot32nabSP3CUjicnypEBz7bHVDhPQt9aAy QmZtmD2qt6fJot32nabSP3CUjicnypEBz7bHVDhPQt9aAy
```

The hash should be exactly the same as the hash you got when you added mytextfile.txt. If you want to triple-check, you can run each of these commands as many times as you want. The hash should always be the same.

```sh
$ ipfs add mytextfile.txt
added QmZtmD2qt6fJot32nabSP3CUjicnypEBz7bHVDhPQt9aAy mytextfile.txt
$ echo "version 1 of my text" | ipfs add
added QmZtmD2qt6fJot32nabSP3CUjicnypEBz7bHVDhPQt9aAy QmZtmD2qt6fJot32nabSP3CUjicnypEBz7bHVDhPQt9aAy
$ cat mytextfile.txt | ipfs add
added QmZtmD2qt6fJot32nabSP3CUjicnypEBz7bHVDhPQt9aAy QmZtmD2qt6fJot32nabSP3CUjicnypEBz7bHVDhPQt9aAy
```

As long as the content remains the same, you will always get the same hash. As far as IPFS is concerned, it _is_ the same content.

### Step 5: Change the content and get a different hash

Now change the text content to "version 2 of my text" and add it to ipfs. You will get a different hash.

As you confirmed in the previous step, you can add the new text directly to IPFS or you can modify mytextfile.txt and add it to IPFS. You will get the same hash either way.

```sh
$ echo "version 2 of my text" | ipfs add
added QmTudJSaoKxtbEnTddJ9vh8hbN84ZLVvD5pNpUaSbxwGoa QmTudJSaoKxtbEnTddJ9vh8hbN84ZLVvD5pNpUaSbxwGoa
```

### Step 5: Pipe content from IPFS into a File

You can read this content (any version) out of ipfs and write it into a file. For example, you can toggle the contents of mytextfile.txt from "version 1" to "version 2" and back as many times as you want:

```sh
$ ipfs cat QmTudJSaoKxtbEnTddJ9vh8hbN84ZLVvD5pNpUaSbxwGoa > mytextfile.txt
$ cat mytextfile.txt
version 2 of my text
$ ipfs cat QmZtmD2qt6fJot32nabSP3CUjicnypEBz7bHVDhPQt9aAy > mytextfile.txt
$ cat mytextfile.txt
version 1 of my text
```

You can also write the content from ipfs into a completely new file.

```sh
$ ipfs cat QmZtmD2qt6fJot32nabSP3CUjicnypEBz7bHVDhPQt9aAy > anothertextfile.txt
$ cat anothertextfile.txt
version 1 of my text
```

## Explanation

IPFS tracks content based on its cryptographic hash. **This hash uniquely identifies exactly that content.** As long as the content stays the same, the hash stays the same. If the content changes at all you will get a different hash.

If you have two different files that contain identical content, IPFS will track that content with one hash. The filenames are different, but the content is the same, so the hash of the content will be identical.

This leads to the question: how does IPFS track file names? That's the topic of the next lesson.

## Next Lesson: Add Filenames and Directory Info to IPFS

Proceed to the next lesson to learn how to
[Wrap Filenames and Directory Info around Content in IPFS](/files-on-ipfs/lessons/wrap-directories-around-content.md)
