#!/bin/bash

# Declare Variables
# API call for most repos does not pull up documentation, should adjust probably
repo="indy-sdk"
repoVersion="v0.0.0"
repoFilePath=""

# Get Versions
repoVersion=$( curl --silent "https://api.github.com/repos/hyperledger/$repo/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/' )
echo ">>>>>>>>>>Latest version: $repoVersion"
repoFilePath="docs/source/$repo/$repoVersion"

# Add documentation if version has not been pulled
if [ ! -d $repoFilePath ]; then

    # Create Version Folders
    mkdir $repoFilePath
    echo ">>>>>>>>>>$repoFilePath created"

    # Pull Repositories
    git clone https://github.com/hyperledger/$repo.git --branch $repoVersion

    # Create Cargo Documentation for indy-sdk--needs to build too (is that worth it?)
    # cargo doc --no-deps 

    # Move Documentation
    mv indy-sdk/doc $repoFilePath
    echo ">>>>>>>>>>$repo documentation moved to $repoFilePath"

    # Delete Repositories
    rm -rf $repo
fi