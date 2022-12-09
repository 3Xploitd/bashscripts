#!/bin/bash
## Provide a file containing the hashes and a wordlist file one per line
## Usage './mremoteng_bruteforce.sh <hash file> <wordlist>'
for line in $(cat $1)
do
    for word in $(cat $2)
    do
        python3 mremoteng_decrypt.py -s $line -p $word
    done
done
