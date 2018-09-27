#!/bin/bash

# Declare Variables

# API call for most repos does not pull up documentation, should adjust probably
repo="indy-sdk"
repoVersion=( "v1.0.0" "v1.0.1" "v1.2.0" "v1.3.0" "v1.4.0" "v1.5.0" "v1.6.0" "v1.6.1" "v1.6.2" "v1.6.3" "v1.6.4" "v1.6.5" "v1.6.6" )
repoFilePath=""

# Cycle through versions
for repoVersion in "${repoVersion[@]}"; do
    echo ">>>>>>>>>>$repoVersion"
    repoFilePath="docs/source/$repo/$repoVersion"

    if [ ! -d $repoFilePath ]; then

        # Create Version Folders
        mkdir $repoFilePath
        echo ">>>>>>>>>>$repoFilePath created"

        # Pull Repositories
        git clone https://github.com/hyperledger/$repo.git --branch $repoVersion

        # Create Cargo Documentation
        # cargo $repo/doc --no-deps

        # Move Documentation
        mv indy-sdk/doc $repoFilePath
        echo ">>>>>>>>>>$repo documentation moved to $repoFilePath"

        # Delete Repositories
        rm -rf $repo
    fi
done