L_GIT_TAG=$(curl -s https://api.github.com/repos/NYU-Robomaster-Ultraviolet/CV_Detection/releases/latest \
| grep "tag_name" \
| awk '{print substr($2, 2, length($2)-3)}') \
;
URL=$(echo "https://github.com/NYU-Robomaster-Ultraviolet/CV_Detection/archive/"$L_GIT_TAG".zip")
wget -O release.zip $URL
unzip release.zip