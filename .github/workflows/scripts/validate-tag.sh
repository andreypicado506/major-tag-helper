#!/bin/bash

# Function to validate a semantic versioning tag
validate_tag() {
  local tag="$1"

  # Regular expression for validating semantic versioning tag
  local semver_regex="^([0-9]+)\.([0-9]+)\.([0-9]+)(-[0-9A-Za-z-]+(\.[0-9A-Za-z-]+)*)?(\+[0-9A-Za-z-]+(\.[0-9A-Za-z-]+)*)?$"

  if [[ $tag =~ $semver_regex ]]; then
    echo "Tag '$tag' is valid according to Semantic Versioning."
    return 0
  else
    echo "Tag '$tag' is NOT valid according to Semantic Versioning."
    return 1
  fi
}

# Main script logic
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <tag>"
  exit 1
fi

tag="$1"
validate_tag "$tag"
