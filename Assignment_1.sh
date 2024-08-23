#! /bin/bash

source_directory=""
destination_directory=""
output_directory="output.csv"
while getopts "s:d:o:" opt; do
  case $opt in
    s)
      source_directory="$OPTARG"
      ;;
    d)
      destination_directory="$OPTARG"
      ;;
    o)
      output_directory="$OPTARG"
      ;;
     *)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done
if [ -z "$source_directory" ] || [ -z "$destination_directory" ]; then
  echo "Error: All options -s (source), -d (destination) must be provided."
  echo "Usage: $0 -s source_directory -d destination_directory -o output_directory(optional)"
  exit 1
fi

pid=$$
filecount=0
IFS=$'\n'
start_time=$(date +%s%3N)
for file in $(find "$source_directory" -type f -name '.*[aeiouAEIOU].*')
	do
	source_directory="${source_directory%/}"
	relative_path="${file#$source_directory}"
	relative_path="${relative_path#/}"
	dest_name="$destination_directory"/"$relative_path"
	dest_dir=$(dirname "$dest_name")
	mkdir -p "$dest_dir"
	if [ "$file" -nt "$dest_name" ]; then 
	cp "$file" "$dest_dir"
	filecount=$((filecount+1))
	fi
	done

end_time=$(date +%s%3N)
run_time=$((end_time-start_time))
echo "PID:$pid, TOTAL FILES COPIED:$filecount, RUNTIME:$run_time milliseconds" >> "$output_directory"
