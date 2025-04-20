#!/bin/bash

# List of YouTube channel URLs
# https://www.streamweasels.com/tools/youtube-channel-id-and-user-id-convertor/
CHANNELS=(
    # "UCrTNhL_yO3tPTdQ5XgmmWjA",  # Redlettermedia",          "https://www.youtube.com/channel/UCrTNhL_yO3tPTdQ5XgmmWjA"),
    # "UCp68_FLety0O-n9QU6phsgw",  # Colin furze",             "https://www.youtube.com/channel/UCp68_FLety0O-n9QU6phsgw"),
    # "UCdmcAwbdiXQWs9d4Qd4KzDw",  # Colin furze 2",           "https://www.youtube.com/channel/UCdmcAwbdiXQWs9d4Qd4KzDw"),
    # "UCSju5G2aFaWMqn-_0YBtq5A",  # stand up maths",          "https://www.youtube.com/channel/UCSju5G2aFaWMqn-_0YBtq5A"),
    # "UCe6ye3l9WA4SdNkqgs0YeMA",  # QI",                      "https://www.youtube.com/channel/UCe6ye3l9WA4SdNkqgs0YeMA"),
    # "UCeYy3kNtk_vhVSxZhi1WGJw",  # WILTY",                   "https://www.youtube.com/channel/UCeYy3kNtk_vhVSxZhi1WGJw"),
    # "UCiDJtJKMICpb9B1qf7qjEOA",  # Tested",                  "https://www.youtube.com/channel/UCiDJtJKMICpb9B1qf7qjEOA"),
    # "UCoxcjq-8xIDTYp3uz647V5A",  # Numberphile ",            "https://www.youtube.com/channel/UCoxcjq-8xIDTYp3uz647V5A"),
    # "UC6mIxFTvXkWQVEHPsEdflzQ",  # Great Scott",             "https://www.youtube.com/channel/UC6mIxFTvXkWQVEHPsEdflzQ"),
    # "UC4a9LfdavRlVMaSSWFdIciA",  # RobWords",                "https://www.youtube.com/channel/UC4a9LfdavRlVMaSSWFdIciA"),
    # "UCUK0HBIBWgM2c4vsPhkYY4w",  # Slowmo Guys",             "https://www.youtube.com/channel/UCUK0HBIBWgM2c4vsPhkYY4w"),
    # "UCgC4Nn0rqqdeqACnzaIMo_Q",  # Slow Mo Guys 2            "https://www.youtube.com/channel/UCgC4Nn0rqqdeqACnzaIMo_Q"),
    # "UCJ0-OtVpF0wOKEqT2Z1HEtA",  # Electroboom",             "https://www.youtube.com/channel/UCJ0-OtVpF0wOKEqT2Z1HEtA"),
    # "UCUHW94eEFW7hkUMVaZz4eDg",  # MinutePhysics",           "https://www.youtube.com/channel/UCUHW94eEFW7hkUMVaZz4eDg"),
    # "UC7_gcs09iThXybpVgjHZ_7g",  # PBS spacetime",           "https://www.youtube.com/channel/UC7_gcs09iThXybpVgjHZ_7g"),
    # "UCC552Sd-3nyi_tk2BudLUzA",  # AsapSCIENCE",             "https://www.youtube.com/channel/UCC552Sd-3nyi_tk2BudLUzA"),
    # "UClsFdM0HzTdF1JYoraQ0aUw",  # BrickExperimentChannel",  "https://www.youtube.com/channel/UClsFdM0HzTdF1JYoraQ0aUw"),
    # "UC5NO8MgTQKHAWXp6z8Xl7yQ",  # This Old Tony",           "https://www.youtube.com/channel/UC5NO8MgTQKHAWXp6z8Xl7yQ"),
    # "UCEIwxahdLz7bap-VDs9h35A",  # SteveMould",              "https://www.youtube.com/channel/UCEIwxahdLz7bap-VDs9h35A"),
    # "UCyCCJFzPLNzBSCttyXP3mpg",  # Mini Construction",       "https://www.youtube.com/channel/UCyCCJFzPLNzBSCttyXP3mpg"),
    # "UC06E4Y_-ybJgBUMtXx8uNNw",  # The Backyard Scientist    "https://www.youtube.com/channel/UC06E4Y_-ybJgBUMtXx8uNNw"),
    # "UClq42foiSgl7sSpLupnugGA",  # D!NG                      "https://www.youtube.com/channel/UClq42foiSgl7sSpLupnugGA"),
    # "UCAL3JXZSzSm8AlZyD3nQdBA",  # Primitive Technology      "https://www.youtube.com/channel/UCAL3JXZSzSm8AlZyD3nQdBA"),
    # "UC4VK4LX8hbTjgdAipl0cHhw",  # Letters Live              "https://www.youtube.com/channel/UC4VK4LX8hbTjgdAipl0cHhw"),
    # "UCEIwxahdLz7bap-VDs9h35A",  # Steve Mould               "https://www.youtube.com/channel/UCEIwxahdLz7bap-VDs9h35A"),
    # "UCsX5upzW0Tk2riDY1WB887w",  # Hannah Fry                "https://www.youtube.com/channel/UCsX5upzW0Tk2riDY1WB887w"),
    # "UCw_lQ_KhJBX4hAQ6rqbg0Bw",  # Kentuky Ballistics        "https://www.youtube.com/@KentuckyBallistics
    # "UCm9K6rby98W8JigLoZOh6FQ",  # Lock Picking Lawyyer      "https://www.youtube.com/channel/UCm9K6rby98W8JigLoZOh6FQ"
    # "UCu0CCEzTTntkXUUdJC20i1w",  # JamiesBrickJams           "https://www.youtube.com/channel/UCu0CCEzTTntkXUUdJC20i1w"
    # "UCDWboBDVnIsGdYSK3KUO0hQ",  # Bricks for Granite        "https://www.youtube.com/channel/UCDWboBDVnIsGdYSK3KUO0hQ"
    # "https://www.youtube.com/user/ChannelName3"

    # Channel Id,Channel Url,Channel Title
    "UC06E4Y_-ybJgBUMtXx8uNNw", #http://www.youtube.com/channel/UC06E4Y_-ybJgBUMtXx8uNNw", #TheBackyardScientist
    "UC4VK4LX8hbTjgdAipl0cHhw", #http://www.youtube.com/channel/UC4VK4LX8hbTjgdAipl0cHhw", #Letters Live
    "UC4a9LfdavRlVMaSSWFdIciA", #http://www.youtube.com/channel/UC4a9LfdavRlVMaSSWFdIciA", #RobWords
    # "UC4sEmXUuWIFlxRIFBRV6VXQ", #http://www.youtube.com/channel/UC4sEmXUuWIFlxRIFBRV6VXQ", #The History Guy: History Deserves to Be Remembered
    "UC5NO8MgTQKHAWXp6z8Xl7yQ", #http://www.youtube.com/channel/UC5NO8MgTQKHAWXp6z8Xl7yQ", #This Old Tony
    "UC6mIxFTvXkWQVEHPsEdflzQ", #http://www.youtube.com/channel/UC6mIxFTvXkWQVEHPsEdflzQ", #GreatScott!
    "UC6nSFpj9HTCZ5t-N3Rm3-HA", #http://www.youtube.com/channel/UC6nSFpj9HTCZ5t-N3Rm3-HA", #Vsauce
    "UC7_gcs09iThXybpVgjHZ_7g", #http://www.youtube.com/channel/UC7_gcs09iThXybpVgjHZ_7g", #PBS Space Time
    "UCAL3JXZSzSm8AlZyD3nQdBA", #http://www.youtube.com/channel/UCAL3JXZSzSm8AlZyD3nQdBA", #Primitive Technology
    "UCEIwxahdLz7bap-VDs9h35A", #http://www.youtube.com/channel/UCEIwxahdLz7bap-VDs9h35A", #Steve Mould
    "UCFZO6aPugMrZjUOobX7IQDA", #http://www.youtube.com/channel/UCFZO6aPugMrZjUOobX7IQDA", #WILTY? Nope!
    "UCHnyfMqiRRG1u-2MsSQLbXA", #http://www.youtube.com/channel/UCHnyfMqiRRG1u-2MsSQLbXA", #Veritasium
    "UCJ0-OtVpF0wOKEqT2Z1HEtA", #http://www.youtube.com/channel/UCJ0-OtVpF0wOKEqT2Z1HEtA", #ElectroBOOM
    "UCKuSn_LSQ_U_8o35jjpi0xQ", #http://www.youtube.com/channel/UCKuSn_LSQ_U_8o35jjpi0xQ", #Travel Man
    "UCP-50HNPjD2YUZhZNKISDJw", #http://www.youtube.com/channel/UCP-50HNPjD2YUZhZNKISDJw", #Official Rory Scovel
    "UCPD_bxCRGpmmeQcbe2kpPaA", #http://www.youtube.com/channel/UCPD_bxCRGpmmeQcbe2kpPaA", #First We Feast
    # "UCQtW2oz8ec8pHjjxawujNjg", #http://www.youtube.com/channel/UCQtW2oz8ec8pHjjxawujNjg", #Free Documentary - Nature
    "UCR1IuLEqb6UEA_zQ81kwXfg", #http://www.youtube.com/channel/UCR1IuLEqb6UEA_zQ81kwXfg", #Real Engineering
    "UCS0N5baNlQWJCUrhCEo8WlA", #http://www.youtube.com/channel/UCS0N5baNlQWJCUrhCEo8WlA", #Ben Eater
    "UCSju5G2aFaWMqn-_0YBtq5A", #http://www.youtube.com/channel/UCSju5G2aFaWMqn-_0YBtq5A", #Stand-up Maths
    "UCUHW94eEFW7hkUMVaZz4eDg", #http://www.youtube.com/channel/UCUHW94eEFW7hkUMVaZz4eDg", #minutephysics
    "UCUK0HBIBWgM2c4vsPhkYY4w", #http://www.youtube.com/channel/UCUK0HBIBWgM2c4vsPhkYY4w", #The Slow Mo Guys
    "UCXKCiTquPMavBqgXgrM9mBg", #http://www.youtube.com/channel/UCXKCiTquPMavBqgXgrM9mBg", #Bobby Fingers
    "UCYeF244yNGuFefuFKqxIAXw", #http://www.youtube.com/channel/UCYeF244yNGuFefuFKqxIAXw", #The Royal Institution
    # "UCafxR2HWJRmMfSdyZXvZMTw", #http://www.youtube.com/channel/UCafxR2HWJRmMfSdyZXvZMTw", #LOOK MUM NO COMPUTER
    "UCdmcAwbdiXQWs9d4Qd4KzDw", #http://www.youtube.com/channel/UCdmcAwbdiXQWs9d4Qd4KzDw", #2 Much ColinFurze
    "UCe6ye3l9WA4SdNkqgs0YeMA", #http://www.youtube.com/channel/UCe6ye3l9WA4SdNkqgs0YeMA", #QI
    "UCeYy3kNtk_vhVSxZhi1WGJw", #http://www.youtube.com/channel/UCeYy3kNtk_vhVSxZhi1WGJw", #Would I Lie To You?
    "UCgC4Nn0rqqdeqACnzaIMo_Q", #http://www.youtube.com/channel/UCgC4Nn0rqqdeqACnzaIMo_Q", #The Slow Mo Guys 2
    "UCiDJtJKMICpb9B1qf7qjEOA", #http://www.youtube.com/channel/UCiDJtJKMICpb9B1qf7qjEOA", #Adam Savage’s Tested
    "UClq42foiSgl7sSpLupnugGA", #http://www.youtube.com/channel/UClq42foiSgl7sSpLupnugGA", #D!NG
    "UClsFdM0HzTdF1JYoraQ0aUw", #http://www.youtube.com/channel/UClsFdM0HzTdF1JYoraQ0aUw", #Brick Experiment Channel
    "UCm9K6rby98W8JigLoZOh6FQ", #http://www.youtube.com/channel/UCm9K6rby98W8JigLoZOh6FQ", #LockPickingLawyer
    "UCoxcjq-8xIDTYp3uz647V5A", #http://www.youtube.com/channel/UCoxcjq-8xIDTYp3uz647V5A", #Numberphile
    "UCp68_FLety0O-n9QU6phsgw", #http://www.youtube.com/channel/UCp68_FLety0O-n9QU6phsgw", #colinfurze
    "UCqNjB7rqcH1XFBW4sMfx9VQ", #http://www.youtube.com/channel/UCqNjB7rqcH1XFBW4sMfx9VQ", #Jim Baird - Adventurer
    "UCrTNhL_yO3tPTdQ5XgmmWjA", #http://www.youtube.com/channel/UCrTNhL_yO3tPTdQ5XgmmWjA", #RedLetterMedia
    "UCsX5upzW0Tk2riDY1WB887w", #http://www.youtube.com/channel/UCsX5upzW0Tk2riDY1WB887w", #Hannah Fry
    "UCtI0Hodo5o5dUb67FeUjDeA", #http://www.youtube.com/channel/UCtI0Hodo5o5dUb67FeUjDeA", #SpaceX
    "UCu0CCEzTTntkXUUdJC20i1w", #http://www.youtube.com/channel/UCu0CCEzTTntkXUUdJC20i1w", #Jamie's Brick Jams
    "UCvNGTR4v5k-Utsci_JYjHfw", #http://www.youtube.com/channel/UCvNGTR4v5k-Utsci_JYjHfw", #Arthur Ganson
    "UCw_lQ_KhJBX4hAQ6rqbg0Bw", #http://www.youtube.com/channel/UCw_lQ_KhJBX4hAQ6rqbg0Bw", #Kentucky Ballistics
    "UCyCCJFzPLNzBSCttyXP3mpg", #http://www.youtube.com/channel/UCyCCJFzPLNzBSCttyXP3mpg", #Mini Construction
    "UCyNtlmLB73-7gtlBz00XOQQ", #http://www.youtube.com/channel/UCyNtlmLB73-7gtlBz00XOQQ", #Folding Ideas
    "UCasG9kJWi1eVxM0QkyqKVJQ", #https://www.youtube.com/@HandToolRescue

)

BASE_DOWNLOAD_DIR="/moshpit/youtube"

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
    jq -c --arg date "$since_when" 'select(.duration > 120 and .upload_date >= ($date | gsub("-";"")))' | while read -r video_json; do
        video_url=$(echo "$video_json" | jq -r '.webpage_url')
        channel_name=$(echo "$video_json" | jq -r '.channel')
        echo "scanning $channel_name"

        sanitized_channel_name=$(sanitize "$channel_name")
        video_dir="$BASE_DOWNLOAD_DIR/$sanitized_channel_name"
        mkdir -p "$video_dir"

        # Check if the video is already downloaded
        filename=$(yt-dlp --no-warnings --get-filename --no-download-archive -o "$video_dir/%(title)s.%(ext)s" "$video_url")
        if [[ ! -f "$filename" && "$filename" != *"#shorts"* ]]; then
            echo "Downloading new video: $video_url"

            yt-dlp  -f "bestvideo[ext=mp4][height<=480]+bestaudio[ext=m4a]/best[ext=mp4][height<=480]" \
                    --postprocessor-args "-movflags +faststart" \
                    -o "$filename" "$video_url"

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

#!/bin/bash

# Find all files ending in .webm.mp4
find "$BASE_DOWNLOAD_DIR" -type f -name "*.webm.mp4" | while read -r webm_file; do
    # Strip the .webm part from the filename
    mp4_file="${webm_file/.webm.mp4/.mp4}"

    # If the non-webm version exists, delete the webm one
    if [[ -f "$mp4_file" ]]; then
        echo "Duplicate found: $webm_file (keeping $mp4_file)"
        rm "$webm_file"
    fi
done


# Remove temp files
find "$BASE_DOWNLOAD_DIR" -type f -name "*.webm" -size 0 -exec rm {} +

# Remove videos older than 7 days
find "$BASE_DOWNLOAD_DIR" -type f -mtime +7 -name "*.mp4" -delete
find "$BASE_DOWNLOAD_DIR" -type d -empty -delete

echo "Done"
