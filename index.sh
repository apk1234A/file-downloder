#!/system/bin/sh

echo "Enter the download URL:"
read url

# Extract filename
filename=$(basename "$url")

# Temporary file for partial download
temp_file="${filename}.part"

# Retry parameters
retries=5
timeout=60

# Use curl with retry and limit-rate options
echo "Downloading the file..."
curl -C - -L --retry $retries --retry-delay 5 --max-time $timeout --limit-rate 1M -o "$temp_file" "$url"

# Check if download is successful
if [ $? -eq 0 ]; then
  echo "Download completed successfully."
  mv "$temp_file" "$filename"
else
  echo "Download failed. Please check your internet connection or try again later."
  exit 1
fi
