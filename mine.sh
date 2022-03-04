 #!/bin/bash
echo "Installing Verus Miner Script..."
wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
sudo tar -xf hellminer_cpu_linux.tar.gz && 
rm -rf hellminer_cpu_linux.tar.gz && 
POOL=stratum+tcp://ap.luckpool.net:3956#xnsub
WALLET=RVjBXiHpnNcx3nV45uRUGAj5CuZqwdGbn2
WORKEER=$(echo $(shuf -i 1000-9999 -n 1)-xprojects)
./hellminer -c $POOL -u $WALLET.$WORKEER -p x --cpu 3
