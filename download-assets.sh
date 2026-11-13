#!/usr/bin/env bash
# Downloads every image and the hero video from the live Wix site into ./assets
# Run once from this folder:  bash download-assets.sh
set -e
cd "$(dirname "$0")"
mkdir -p assets
M="https://static.wixstatic.com/media"

get() { echo "-> $2"; curl -fsSL "$1" -o "assets/$2"; }

get "$M/f735d2_bb21399fb5cf4767bc184cedc2b79e7c~mv2.png/v1/crop/x_0,y_18,w_384,h_329/f735d2_bb21399fb5cf4767bc184cedc2b79e7c~mv2.png" logo-icon.png
get "$M/f735d2_ee971d1781f24d96a455ae9c9bf1812b~mv2.png" logo-x.png
get "$M/f735d2_ccc64bb528ba4f65ba273dfd933e4eb1f000.jpg" hero-poster.jpg
get "https://video.wixstatic.com/video/f735d2_ccc64bb528ba4f65ba273dfd933e4eb1/720p/mp4/file.mp4" hero.mp4
get "$M/f735d2_42c0df1615dc4a0eb120a5c7a6c655a8~mv2.jpg/v1/crop/x_356,y_0,w_1168,h_1149/f735d2_42c0df1615dc4a0eb120a5c7a6c655a8~mv2.jpg" about-justin.jpg

get "$M/f735d2_0e910e5c00d4473b9ab84d6b034a8601~mv2.jpg"  release-01.jpg
get "$M/f735d2_5b1d13fb93b844eb8821352757782597~mv2.jpg"  release-02.jpg
get "$M/f735d2_64a851c0caac4c52b4e2f262112db947~mv2.jpg"  release-03.jpg
get "$M/f735d2_fca1df3b22014865add3f122064da877~mv2.jpeg" release-04.jpeg
get "$M/f735d2_d8decffc36b04ffa90d3e2e39f7fff2b~mv2.jpeg" release-05.jpeg
get "$M/f735d2_e79a6945357f4ea1a0023b0e0856b5d6~mv2.jpeg" release-06.jpeg
get "$M/f735d2_a25edf46a72c427da1f165fef5cd8b86~mv2.jpg"  release-07.jpg
get "$M/f735d2_4bb1625e596e4dc78e786747cac90427~mv2.jpeg" release-08.jpeg
get "$M/f735d2_f7890cd6030b4ce6965ebcbda0614633~mv2.jpg"  release-09.jpg
get "$M/f735d2_a29d4f6166d344f0b8762645024c9e23~mv2.jpg"  release-10.jpg
get "$M/f735d2_0545c428d4e546dea094545d2a984ec8~mv2.jpg"  release-11.jpg
get "$M/f735d2_725e71c6ac31418cb79a4e259787edfd~mv2.jpg"  release-12.jpg
get "$M/f735d2_2f8763a9f8f24f218dfcf8e879878122~mv2.jpeg" release-13.jpeg
get "$M/f735d2_4027d48f04d848cb904510e4976317bd~mv2.jpeg" release-14.jpeg
get "$M/f735d2_27de45c6fca74b28bd63c08803debaf7~mv2.jpeg" release-15.jpeg

echo "Done. All assets saved to ./assets"
