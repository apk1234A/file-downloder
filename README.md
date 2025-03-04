# Shell Script for File Download with Resume Support

This script allows users to download files from a given URL with support for resuming interrupted downloads. It uses `curl` and includes retry functionality for better reliability.

## Features
- Asks the user for a download URL.
- Extracts the filename from the URL.
- Supports resuming interrupted downloads using `-C -`.
- Implements automatic retries (default: 5 times) in case of failure.
- Limits the download speed to **1MB/s** to prevent network congestion.
- Sets a timeout of **60 seconds** per request.

## Usage
1. Run the script:
   ```sh
   sh index.sh
