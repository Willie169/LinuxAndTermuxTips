pkg install ffmpeg

ffmpeg -y -i input.mkv -an -crf 23 -maxrate 2M -bufsize 2M -vf format=yuv420p output.mkv