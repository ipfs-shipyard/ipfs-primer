# Adding a file into IPFS

## Goals (Learning Objectives)
After doing this tutorial you will be able to    
* Add a file to IPFS
* Read a file out of IPFS

## Steps
### Step 1: Add the file to IPFS

```
ipfs add afile.txt
```
This will return a hash that looks like `qms2hjwx8qejwm4nmwu7ze6ndam2sfums3x6idwz5myzbn`. Copy that hash for the next step.

### Step 2: Confirm that the file is now in IPFS

Type the following into the command line, replacing `thathash` with the hash you copied from the last step.
```
ipfs ls thathash
```

The above command should print out something like:
```
ipfs@earth ~> ipfs ls qms2hjwx8qejwm4nmwu7ze6ndam2sfums3x6idwz5myzbn
qmv8ndh7ageh9b24zngaextmuhj7aiuw3scc8hkczvjkww 7866189
qmuvjja4s4cgyqyppozttssquvgcv2n2v8mae3gnkrxmol 7866189
qmrgjmlhlddhvxuieveuuwkeci4ygx8z7ujunikzpfzjuk 7866189
qmrolalcquyo5vu5v8bvqmgjcpzow16wukq3s3vrll2tdk 7866189
qmwk51jygpchgwr3srdnmhyerheqd22qw3vvyamb3emhuw 5244129
```

What this is showing is all of the immediate sub-blocks of your file, and the
size of them and their children on disk. If you want to know more about how these blocks and sub-blocks work, explore the [tutorials about the IPFS DAG](/ipfs-dag)

### Step 2: Read the File




## Explanation
