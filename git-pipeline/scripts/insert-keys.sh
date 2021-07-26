#!/usr/bin/env bash

# bootnode "http://13.229.99.249:9933"
# only insert keys to validator nodes
NODE_URL=("http://54.179.165.234:9933" "http://54.169.216.164:9933")

for i in {0..1}
do
  echo ""
  echo ">> Index: ${i}"
  echo ">> Appling to URL: ${NODE_URL[$i]}"
  curl ${NODE_URL[$i]} -H "Content-Type:application/json;charset=utf-8" -d "@keys/node_${i}_stash_gran.json"
  curl ${NODE_URL[$i]} -H "Content-Type:application/json;charset=utf-8" -d "@keys/node_${i}_gran.json"
  curl ${NODE_URL[$i]} -H "Content-Type:application/json;charset=utf-8" -d "@keys/node_${i}_babe.json"
  curl ${NODE_URL[$i]} -H "Content-Type:application/json;charset=utf-8" -d "@keys/node_${i}_imol.json"
  curl ${NODE_URL[$i]} -H "Content-Type:application/json;charset=utf-8" -d "@keys/node_${i}_audi.json"
done
