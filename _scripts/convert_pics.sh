cd $(dirname "$0")

rm -rf ../assets/*.{jpg,png}

sips -Z 3000 ../_assets/hd.png -o ../assets/hd-2000.png
sips -Z 1500 ../_assets/hd.png -o ../assets/hd-1000.png
sips -Z 750 ../_assets/hd.png -o ../assets/hd-500.png
sips -Z 375 ../_assets/hd.png -o ../assets/hd-250.png

sips -Z 1000 -s formatOptions 50 ../_assets/hd-quadrat.jpg -o ../assets/hd-quadrat.jpg
