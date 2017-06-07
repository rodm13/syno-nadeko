#!/bin/sh
echo ""
echo "NadekoBot Installer started."

if hash git 1>/dev/null 2>&1
then
    echo ""
    echo "Git Installed."
else
    echo ""    
    echo "Git is not installed. Please install Git."
    exit 1
fi


if hash dotnet 1>/dev/null 2>&1
then
    echo ""
    echo "Dotnet installed."
else
    echo ""
    echo "Dotnet is not installed. Please install dotnet."
    exit 1
fi

root=/opt

cd "$root"

echo ""
echo "Downloading NadekoBot, please wait."
git clone -b 1.4 --recursive --depth 1 https://github.com/Kwoth/NadekoBot.git
echo ""
echo "NadekoBot downloaded."

echo ""
echo "Downloading Nadeko dependencies"
cd $root/NadekoBot
dotnet restore
echo ""
echo "Download done"

echo ""
echo "Building NadekoBot"
dotnet build --configuration Release
echo ""
echo "Building done."

echo ""
echo "Linking Nadeko DB"

mkdir /root/nadeko
mv -n /opt/NadekoBot/src/NadekoBot/bin/Release/netcoreapp1.1/data/NadekoBot.db /root/nadeko/NadekoBot.db
rm /opt/NadekoBot/src/NadekoBot/bin/Release/netcoreapp1.1/data/NadekoBot.db
ln -s ln -s /root/nadeko/NadekoBot.db /opt/NadekoBot/src/NadekoBot/bin/Release/netcoreapp1.1/data/NadekoBot.db

echo ""
echo "Linking Nadeko Credentials"

mv -n /opt/NadekoBot/src/NadekoBot/credentials.json /root/nadeko/credentials.json
rm /opt/NadekoBot/src/NadekoBot/credentials.json
ln -s ln -s /root/nadeko/NadekoBot.db /opt/NadekoBot/src/NadekoBot/credentials.json

echo ""
echo "Installation Complete."
exit 0
