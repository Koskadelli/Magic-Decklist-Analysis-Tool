import os
import json

# Directory containing your JSON files
json_directory = '../data/prices/'

# Resulting data structure
combined_pricing_data = []

# Loop through each file in the directory
for filename in os.listdir(json_directory):
    if filename.endswith('.txt'):
        filepath = os.path.join(json_directory, filename)

        # Extract date from filename, assuming it's in the format 'price-history-YYYY-MM-DD.txt'
        date_str = filename.split('.')[0].split('-')
        date = f"{date_str[2]}-{date_str[3]}-{date_str[4]}"  # Convert to just 'YYYY-MM-DD'

        # Read the JSON file
        with open(filepath, 'r') as file:
            data = json.load(file)

        # Append to the combined data structure
        combined_pricing_data.append({"date": date, "price": [data]})

# Write the combined data to a new JSON file
with open('../data/combined_pricing_data.json', 'w') as outfile:
    json.dump(combined_pricing_data, outfile, indent=2)