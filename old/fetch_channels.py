#!/usr/bin/env python

import os
import yt_dlp
from pathlib import Path
from datetime import datetime
from dateutil.relativedelta import relativedelta


print("use fetch_channels.sh")
exit(0)
output_folder = "/moshpit/youtube/"
if not os.path.exists(output_folder):
    os.makedirs(output_folder)

Path(output_folder + '/file.txt').touch()

# https://www.streamweasels.com/tools/youtube-channel-id-and-user-id-convertor/
channels = [
    ("Redlettermedia",          "https://www.youtube.com/channel/UCrTNhL_yO3tPTdQ5XgmmWjA"),
    ("Colin furze",             "https://www.youtube.com/channel/UCp68_FLety0O-n9QU6phsgw"),
    ("stand up maths",          "https://www.youtube.com/channel/UCSju5G2aFaWMqn-_0YBtq5A"),
    ("QI",                      "https://www.youtube.com/channel/UCe6ye3l9WA4SdNkqgs0YeMA"),
    ("WILTY",                   "https://www.youtube.com/channel/UCeYy3kNtk_vhVSxZhi1WGJw"),
    ("Tested",                  "https://www.youtube.com/channel/UCiDJtJKMICpb9B1qf7qjEOA"),
    ("Numberphile ",            "https://www.youtube.com/channel/UCoxcjq-8xIDTYp3uz647V5A"),
    ("Great Scott",             "https://www.youtube.com/channel/UC6mIxFTvXkWQVEHPsEdflzQ"),
    ("RobWords",                "https://www.youtube.com/channel/UC4a9LfdavRlVMaSSWFdIciA"),
    ("Slowmo Guys",             "https://www.youtube.com/channel/UCUK0HBIBWgM2c4vsPhkYY4w"),
    ("Electroboom",             "https://www.youtube.com/channel/UCJ0-OtVpF0wOKEqT2Z1HEtA"),
    ("MinutePhysics",           "https://www.youtube.com/channel/UCUHW94eEFW7hkUMVaZz4eDg"),
    ("PBS spacetime",           "https://www.youtube.com/channel/UC7_gcs09iThXybpVgjHZ_7g"),
    ("AsapSCIENCE",             "https://www.youtube.com/channel/UCC552Sd-3nyi_tk2BudLUzA"),
    ("BrickExperimentChannel",  "https://www.youtube.com/channel/UClsFdM0HzTdF1JYoraQ0aUw"),
    ("This Old Tony",           "https://www.youtube.com/channel/UC5NO8MgTQKHAWXp6z8Xl7yQ"),
    ("Mini Construction",       "https://www.youtube.com/channel/UCyCCJFzPLNzBSCttyXP3mpg"),
    # ("xxx", "https://www.youtube.com/channel/xxx"), # etc
]

earliest = datetime.now() - relativedelta(days=7)
formatted_date = earliest.strftime('%Y%m%d')

for channel_name, channel_url in channels:
    print(f"Downloading from channel: {channel_url}")

    ydl_opts = {
        'format': 'best',
        'outtmpl': os.path.join(output_folder, f'%(playlist)s/{channel_name} - %(title)s.%(ext)s'),
        'playlistend': 2,  # Limit to the most recent x videos
        'noplaylist': True,
        'cookiefile':'/home/sacha/work/youtube/cookies.txt',
        # 'min_filesize': 11000000,
        'match_filter': yt_dlp.utils.match_filter_func(
            "live_status != is_live & "         # skip Live videos in any playlist
            "url !~= shorts & "                 # no Shorts
            "playlist !~= Live & "              # and avoid the Live playlist altogether
            f"upload_date >= {formatted_date}"  # only from the last x days
            ),
    }

    with yt_dlp.YoutubeDL(ydl_opts) as ydl:
        try:
            ydl.download([channel_url])
        except:
            pass


