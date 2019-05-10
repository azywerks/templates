#!/bin/bash
echo kubectl delete $1 $(kubectl get pods -o name | grep $2 | sed 's/pod\///g')