#ffmpeg -video_size 1366x768 -framerate 12 -f x11grab -i :0.0 ./out1.mp4

duration=3600
stamp=0
while [ 0 -eq 0 ]; do
    echo "recording video $stamp for $duration seconds"
    sleep 1
    ffmpeg -t $duration -video_size 1366x768 -framerate 12 -f x11grab -i :0.0 ./vids/out_$stamp.mp4
    let stamp++
done

