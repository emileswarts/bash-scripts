#!/bin/bash

main(){
  i=0;
  for file in `ls |sort -n |grep jpg`;
  do
    `cp -pr $file new/$i.jpg`;
    let i++;
  done
}

main
