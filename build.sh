echo copy .jar download link
echo preview https://github.com/Suwayomi/Tachidesk-Server-preview/releases
echo stable https://github.com/Suwayomi/Tachidesk-Server/releases

read URL

echo download $URL

podman build -f Containerfile -t tachidesk:latest --build-arg TACHIDESK_RELEASE_DOWNLOAD_URL=$URL
