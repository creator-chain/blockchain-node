#!/usr/bin/env bash

NODE_URL=("http://1.2.3.4:9933" "http://5.6.7.8:9933" "http://1.4.3.2:9933")

for i in {0..2}
do
  curl ${NODE_URL[$i]} -H "Content-Type:application/json;charset=utf-8" -d "@keys/node_${i}_stash_gran.json"
  curl ${NODE_URL[$i]} -H "Content-Type:application/json;charset=utf-8" -d "@keys/node_${i}_gran.json"
  curl ${NODE_URL[$i]} -H "Content-Type:application/json;charset=utf-8" -d "@keys/node_${i}_babe.json"
  curl ${NODE_URL[$i]} -H "Content-Type:application/json;charset=utf-8" -d "@keys/node_${i}_imol.json"
  curl ${NODE_URL[$i]} -H "Content-Type:application/json;charset=utf-8" -d "@keys/node_${i}_audi.json"
done
