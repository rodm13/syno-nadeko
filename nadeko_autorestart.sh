#!/bin/sh

if hash dotnet 2>/dev/null
then
	echo "Dotnet installed."
else
	echo "Dotnet is not installed. Please install dotnet."
	exit 1
fi

echo ""
echo "Linking Nadeko DB"
mkdir -p /root/nadeko
mv -n /opt/NadekoBot/src/NadekoBot/bin/Release/netcoreapp1.1/data/NadekoBot.db /root/nadeko/NadekoBot.db > /dev/null 2>&1
rm /opt/NadekoBot/src/NadekoBot/bin/Release/netcoreapp1.1/data/NadekoBot.db > /dev/null 2>&1
ln -s /root/nadeko/NadekoBot.db /opt/NadekoBot/src/NadekoBot/bin/Release/netcoreapp1.1/data/NadekoBot.db > /dev/null 2>&1

echo ""
echo "Linking Nadeko Credentials"
mv -n /opt/NadekoBot/src/NadekoBot/credentials.json /root/nadeko/credentials.json > /dev/null 2>&1
rm /opt/NadekoBot/src/NadekoBot/credentials.json > /dev/null 2>&1
ln -s /root/nadeko/credentials.json /opt/NadekoBot/src/NadekoBot/credentials.json > /dev/null 2>&1

echo ""
echo "Linking Nadeko Data Folder"
mkdir -p /root/nadeko/data
cp -rvn /opt/NadekoBot/src/NadekoBot/bin/Release/netcoreapp1.1/data/* /root/nadeko/data/
rm -rf /opt/NadekoBot/src/NadekoBot/bin/Release/netcoreapp1.1/data/ > /dev/null 2>&1
mkdir -p /opt/NadekoBot/src/NadekoBot/bin/Release/netcoreapp1.1/data/ > /dev/null 2>&1
ln -s /opt/NadekoBot/src/NadekoBot/bin/Release/netcoreapp1.1/data/ /root/nadeko/ > /dev/null 2>&1

echo ""
echo "Running NadekoBot with auto restart Please wait."
cd NadekoBot/src/NadekoBot
while :; do dotnet run -c Release; sleep 5s; done
echo "Done"

exit 0
