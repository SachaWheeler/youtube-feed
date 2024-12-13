#!/bin/bash

# List of YouTube channel URLs
# https://www.streamweasels.com/tools/youtube-channel-id-and-user-id-convertor/
CHANNELS=(
    "UCrTNhL_yO3tPTdQ5XgmmWjA",  # Redlettermedia",          "https://www.youtube.com/channel/UCrTNhL_yO3tPTdQ5XgmmWjA"),
    "UCp68_FLety0O-n9QU6phsgw",  # Colin furze",             "https://www.youtube.com/channel/UCp68_FLety0O-n9QU6phsgw"),
    "UCdmcAwbdiXQWs9d4Qd4KzDw",  # Colin furze 2",           "https://www.youtube.com/channel/UCdmcAwbdiXQWs9d4Qd4KzDw"),
    "UCSju5G2aFaWMqn-_0YBtq5A",  # stand up maths",          "https://www.youtube.com/channel/UCSju5G2aFaWMqn-_0YBtq5A"),
    "UCe6ye3l9WA4SdNkqgs0YeMA",  # QI",                      "https://www.youtube.com/channel/UCe6ye3l9WA4SdNkqgs0YeMA"),
    "UCeYy3kNtk_vhVSxZhi1WGJw",  # WILTY",                   "https://www.youtube.com/channel/UCeYy3kNtk_vhVSxZhi1WGJw"),
    "UCiDJtJKMICpb9B1qf7qjEOA",  # Tested",                  "https://www.youtube.com/channel/UCiDJtJKMICpb9B1qf7qjEOA"),
    "UCoxcjq-8xIDTYp3uz647V5A",  # Numberphile ",            "https://www.youtube.com/channel/UCoxcjq-8xIDTYp3uz647V5A"),
    "UC6mIxFTvXkWQVEHPsEdflzQ",  # Great Scott",             "https://www.youtube.com/channel/UC6mIxFTvXkWQVEHPsEdflzQ"),
    "UC4a9LfdavRlVMaSSWFdIciA",  # RobWords",                "https://www.youtube.com/channel/UC4a9LfdavRlVMaSSWFdIciA"),
    "UCUK0HBIBWgM2c4vsPhkYY4w",  # Slowmo Guys",             "https://www.youtube.com/channel/UCUK0HBIBWgM2c4vsPhkYY4w"),
    "UCgC4Nn0rqqdeqACnzaIMo_Q",  # Slow Mo Guys 2            "https://www.youtube.com/channel/UCgC4Nn0rqqdeqACnzaIMo_Q"),
    "UCJ0-OtVpF0wOKEqT2Z1HEtA",  # Electroboom",             "https://www.youtube.com/channel/UCJ0-OtVpF0wOKEqT2Z1HEtA"),
    "UCUHW94eEFW7hkUMVaZz4eDg",  # MinutePhysics",           "https://www.youtube.com/channel/UCUHW94eEFW7hkUMVaZz4eDg"),
    "UC7_gcs09iThXybpVgjHZ_7g",  # PBS spacetime",           "https://www.youtube.com/channel/UC7_gcs09iThXybpVgjHZ_7g"),
    "UCC552Sd-3nyi_tk2BudLUzA",  # AsapSCIENCE",             "https://www.youtube.com/channel/UCC552Sd-3nyi_tk2BudLUzA"),
    "UClsFdM0HzTdF1JYoraQ0aUw",  # BrickExperimentChannel",  "https://www.youtube.com/channel/UClsFdM0HzTdF1JYoraQ0aUw"),
    "UC5NO8MgTQKHAWXp6z8Xl7yQ",  # This Old Tony",           "https://www.youtube.com/channel/UC5NO8MgTQKHAWXp6z8Xl7yQ"),
    "UCEIwxahdLz7bap-VDs9h35A",  # SteveMould",              "https://www.youtube.com/channel/UCEIwxahdLz7bap-VDs9h35A"),
    "UCyCCJFzPLNzBSCttyXP3mpg",  # Mini Construction",       "https://www.youtube.com/channel/UCyCCJFzPLNzBSCttyXP3mpg"),
    "UC06E4Y_-ybJgBUMtXx8uNNw",  # The Backyard Scientist    "https://www.youtube.com/channel/UC06E4Y_-ybJgBUMtXx8uNNw"),
    "UClq42foiSgl7sSpLupnugGA",  # D!NG                      "https://www.youtube.com/channel/UClq42foiSgl7sSpLupnugGA"),
    "UCAL3JXZSzSm8AlZyD3nQdBA",  # Primitive Technology      "https://www.youtube.com/channel/UCAL3JXZSzSm8AlZyD3nQdBA"),
    "UC4VK4LX8hbTjgdAipl0cHhw",  # Letters Live              "https://www.youtube.com/channel/UC4VK4LX8hbTjgdAipl0cHhw"),
    "UCEIwxahdLz7bap-VDs9h35A",  # Steve Mould               "https://www.youtube.com/channel/UCEIwxahdLz7bap-VDs9h35A"),
    "UCsX5upzW0Tk2riDY1WB887w",  # Hannah Fry                "https://www.youtube.com/channel/UCsX5upzW0Tk2riDY1WB887w"),
    "UCw_lQ_KhJBX4hAQ6rqbg0Bw",  # Kentuky Ballistics        "https://www.youtube.com/@KentuckyBallistics
    "UCm9K6rby98W8JigLoZOh6FQ",  # Lock Picking Lawyyer      "https://www.youtube.com/channel/UCm9K6rby98W8JigLoZOh6FQ"
    "UCu0CCEzTTntkXUUdJC20i1w",  # JamiesBrickJams           "https://www.youtube.com/channel/UCu0CCEzTTntkXUUdJC20i1w"
    "UCDWboBDVnIsGdYSK3KUO0hQ",  # Bricks for Granite        "https://www.youtube.com/channel/UCDWboBDVnIsGdYSK3KUO0hQ"
    # "https://www.youtube.com/user/ChannelName3"
)

BASE_DOWNLOAD_DIR="/moshpit/youtube" #"/moshpit/youtube"
# DESTINATION_DIR="/moshpit/youtube"

TIMESTAMP_FILE="$BASE_DOWNLOAD_DIR/file.txt"

# Create download directory if it does not exist
mkdir -p "$BASE_DOWNLOAD_DIR"

since_when=$(date -d '1 week ago' +%Y-%m-%d)

sanitize() {
    echo "$1" | sed 's/[\/:*?"<>|]/_/g'
}

# Function to check for new videos and download them
check_and_download() {
    local channel_id="$1"

    # Get the list of latest videos (excluding Shorts)
    yt-dlp --no-warnings -j "https://www.youtube.com/feeds/videos.xml?channel_id=$channel_id" | \
    jq -c --arg date "$since_when" 'select(.duration > 60 and .upload_date >= ($date | gsub("-";"")))' | while read -r video_json; do
        video_url=$(echo "$video_json" | jq -r '.webpage_url')
        channel_name=$(echo "$video_json" | jq -r '.channel')
        echo "scanning $channel_name"

        sanitized_channel_name=$(sanitize "$channel_name")
        video_dir="$BASE_DOWNLOAD_DIR/$sanitized_channel_name"
        mkdir -p "$video_dir"

        # Check if the video is already downloaded
        filename=$(yt-dlp --no-warnings --get-filename --no-download-archive -o "$video_dir/%(title)s.%(ext)s" "$video_url")
        # if [[ ! -f "$filename" && "$filename" != *"webm"* && "$filename" != *"mkv"* ]]; then
        if [[ ! -f "$filename" ]]; then
            echo "Downloading new video: $video_url"

            yt-dlp  -f "bestvideo[ext=mp4][height<=480]+bestaudio[ext=m4a]/best[ext=mp4][height<=480]" \
                    --postprocessor-args "-movflags +faststart" \
                    -o "$filename" "$video_url"

            # Temporary output file
            # temp_file="${filename}.tmp"

            echo "$filename"
            touch "$filename"
            touch "$TIMESTAMP_FILE"
        fi
    done
}

# Loop through each channel and check for new videos
for channel in "${CHANNELS[@]}"; do
    check_and_download "$channel"
done

# Remove temp files
find "$BASE_DOWNLOAD_DIR" -type f -name "*.webm" -size 0 -exec rm {} +

# Remove videos older than 7 days
find "$BASE_DOWNLOAD_DIR" -type f -mtime +7 -name "*.mp4" -delete
find "$BASE_DOWNLOAD_DIR" -type d -empty -delete

echo "Done"
