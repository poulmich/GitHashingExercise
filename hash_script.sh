  GNU nano 6.2                                                             script2.sh                                                                       #!/bin/bash

#store the input
input=$1

#calculate the hash
hash=$(echo -n "$input" | sha256sum | awk '{print $1}')

#store the hash into the hash output.txt
echo "$hash" >> hash_output.txt
