#!/bin/bash

# List of directories to delete
directories=(
  "com.apple.appstore"
  "com.apple.appstoreagent"
  "com.apple.storeaccount"
  "com.apple.storeassets"
  "com.apple.storedownload"
  "com.apple.storeinapp"
)

# Base directory
base_dir="${HOME}/Library/Caches"

# Loop through the directories
for dir in "${directories[@]}"; do
  # Find and delete the directories
  sudo find "${base_dir}" -type d -name "${dir}" -exec rm -rf {} \; -print
done
