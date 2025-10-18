#!/bin/bash

log_file="sorting.log"
mkdir -p Images Documents
find . -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.gif" \) -exec mv -t ~/Images {} + 2>> "$log_file"
find . -type f \( -name "*.txt" -o -name "*.pdf" -o -name "*.docx" -o -name "*.sh" \) -exec mv -t ~/Documents {} + 2>> "$log_file"
echo "Процесс завершен $(date)" >> "$log_file"
