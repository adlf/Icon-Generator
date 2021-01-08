#!/bin/bash

pathToFile=$(realpath $1)

rm -rf icons
mkdir icons && cd icons
mkdir android
mkdir ios && cd android
mkdir mipmap-hdpi mipmap-mdpi mipmap-xhdpi mipmap-xxhdpi mipmap-xxxhdpi

cd mipmap-hdpi && convert $pathToFile -resize 72x72 ic_launcher.png && cd ..
cd mipmap-mdpi && convert $pathToFile -resize 48x48 ic_launcher.png && cd ..
cd mipmap-xhdpi && convert $pathToFile -resize 96x96 ic_launcher.png && cd ..
cd mipmap-xxhdpi && convert $pathToFile -resize 144x144 ic_launcher.png && cd ..
cd mipmap-xxxhdpi && convert $pathToFile -resize 192x192 ic_launcher.png

cd ../..

cd ios

convert $pathToFile -resize 20x20 Icon-App-20x20@1x.png
convert $pathToFile -resize 40x40 Icon-App-20x20@2x.png
convert $pathToFile -resize 60x60 Icon-App-20x20@3x.png
convert $pathToFile -resize 29x29 Icon-App-29x29@1x.png
convert $pathToFile -resize 58x58 Icon-App-29x29@2x.png
convert $pathToFile -resize 87x87 Icon-App-29x29@3x.png
convert $pathToFile -resize 40x40 Icon-App-40x40@1x.png
convert $pathToFile -resize 80x80 Icon-App-40x40@2x.png
convert $pathToFile -resize 76x76 Icon-App-76x76@1x.png
convert $pathToFile -resize 120x120 Icon-App-40x40@3x.png
convert $pathToFile -resize 120x120 Icon-App-60x60@2x.png
convert $pathToFile -resize 180x180 Icon-App-60x60@3x.png
convert $pathToFile -resize 152x152 Icon-App-76x76@2x.png
convert $pathToFile -resize 167x167 Icon-App-83.5x83.5@2x.png
convert $pathToFile -resize 1024x1024 Icon-App-1024x1024@1x.png

cat > Contents.json <<EOF
{
  "images": [
    {
      "size": "20x20",
      "idiom": "iphone",
      "filename": "Icon-App-20x20@2x.png",
      "scale": "2x"
    },
    {
      "size": "20x20",
      "idiom": "iphone",
      "filename": "Icon-App-20x20@3x.png",
      "scale": "3x"
    },
    {
      "size": "29x29",
      "idiom": "iphone",
      "filename": "Icon-App-29x29@1x.png",
      "scale": "1x"
    },
    {
      "size": "29x29",
      "idiom": "iphone",
      "filename": "Icon-App-29x29@2x.png",
      "scale": "2x"
    },
    {
      "size": "29x29",
      "idiom": "iphone",
      "filename": "Icon-App-29x29@3x.png",
      "scale": "3x"
    },
    {
      "size": "40x40",
      "idiom": "iphone",
      "filename": "Icon-App-40x40@2x.png",
      "scale": "2x"
    },
    {
      "size": "40x40",
      "idiom": "iphone",
      "filename": "Icon-App-40x40@3x.png",
      "scale": "3x"
    },
    {
      "size": "60x60",
      "idiom": "iphone",
      "filename": "Icon-App-60x60@2x.png",
      "scale": "2x"
    },
    {
      "size": "60x60",
      "idiom": "iphone",
      "filename": "Icon-App-60x60@3x.png",
      "scale": "3x"
    },
    {
      "size": "20x20",
      "idiom": "ipad",
      "filename": "Icon-App-20x20@1x.png",
      "scale": "1x"
    },
    {
      "size": "20x20",
      "idiom": "ipad",
      "filename": "Icon-App-20x20@2x.png",
      "scale": "2x"
    },
    {
      "size": "29x29",
      "idiom": "ipad",
      "filename": "Icon-App-29x29@1x.png",
      "scale": "1x"
    },
    {
      "size": "29x29",
      "idiom": "ipad",
      "filename": "Icon-App-29x29@2x.png",
      "scale": "2x"
    },
    {
      "size": "40x40",
      "idiom": "ipad",
      "filename": "Icon-App-40x40@1x.png",
      "scale": "1x"
    },
    {
      "size": "40x40",
      "idiom": "ipad",
      "filename": "Icon-App-40x40@2x.png",
      "scale": "2x"
    },
    {
      "size": "76x76",
      "idiom": "ipad",
      "filename": "Icon-App-76x76@1x.png",
      "scale": "1x"
    },
    {
      "size": "76x76",
      "idiom": "ipad",
      "filename": "Icon-App-76x76@2x.png",
      "scale": "2x"
    },
    {
      "size": "83.5x83.5",
      "idiom": "ipad",
      "filename": "Icon-App-83.5x83.5@2x.png",
      "scale": "2x"
    },
    {
      "size": "1024x1024",
      "idiom": "ios-marketing",
      "filename": "Icon-App-1024x1024@1x.png",
      "scale": "1x"
    }
  ],
  "info": {
    "version": 1,
    "author": "adlf"
  }
}
EOF

