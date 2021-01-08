# Icon-Generator
Generate icons for your Flutter application (Android, iOS)

## Dependencies needed
- [convert](https://linux.die.net/man/1/convert)


#
Running

`
sh generate.sh <image filename>.<extension>
`

e.g.
`
 sh generate.sh icon.png
`

This will generate a folder with the following structure:

```

├── icons

│   ├── android
│   │   ├── mipmap-hdpi
│   │   │   └── ic_launcher.png
│   │   ├── mipmap-mdpi
│   │   │   └── ic_launcher.png
│   │   ├── mipmap-xhdpi
│   │   │   └── ic_launcher.png
│   │   ├── mipmap-xxhdpi
│   │   │   └── ic_launcher.png
│   │   └── mipmap-xxxhdpi
│   │       └── ic_launcher.png
│   └── ios
│       ├── Contents.json
│       ├── Icon-App-1024x1024@1x.png
│       ├── Icon-App-20x20@1x.png
│       ├── Icon-App-20x20@2x.png
│       ├── Icon-App-20x20@3x.png
│       ├── Icon-App-29x29@1x.png
│       ├── Icon-App-29x29@2x.png
│       ├── Icon-App-29x29@3x.png
│       ├── Icon-App-40x40@1x.png
│       ├── Icon-App-40x40@2x.png
│       ├── Icon-App-40x40@3x.png
│       ├── Icon-App-60x60@2x.png
│       ├── Icon-App-60x60@3x.png
│       ├── Icon-App-76x76@1x.png
│       ├── Icon-App-76x76@2x.png
│       └── Icon-App-83.5x83.5@2x.png

```
