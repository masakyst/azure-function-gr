#!/bin/bash

mkdir build/azure-functions/hello
cp function.json ./build/azure-functions/hello
cd build/azure-functions
func host start
