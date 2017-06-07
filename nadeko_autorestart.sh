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

mkdir /root/nadeko
mv -n /opt/NadekoBot/src/NadekoBot/bin/Release/netcoreapp1.1/data/NadekoBot.db /root/nadeko/NadekoBot.db > /dev/null 2>&1
rm /opt/NadekoBot/src/NadekoBot/bin/Release/netcoreapp1.1/data/NadekoBot.db > /dev/null 2>&1
ln -s /root/nadeko/NadekoBot.db /opt/NadekoBot/src/NadekoBot/bin/Release/netcoreapp1.1/data/NadekoBot.db > /dev/null 2>&1

echo ""
echo "Linking Nadeko Credentials"
mv -n /opt/NadekoBot/src/NadekoBot/credentials.json /root/nadeko/credentials.json > /dev/null 2>&1
rm /opt/NadekoBot/src/NadekoBot/credentials.json > /dev/null 2>&1
ln -s /root/nadeko/credentials.json /opt/NadekoBot/src/NadekoBot/credentials.json > /dev/null 2>&1

cd NadekoBot/src/NadekoBot
echo "Running NadekoBot with auto restart Please wait."
while :; do dotnet run -c Release; sleep 5s; done
echo "Done"

exit 0
