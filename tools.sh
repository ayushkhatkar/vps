#!/bin/bash

apt update && apt upgrade;
wget https://go.dev/dl/go1.19.2.linux-amd64.tar.gz;
sudo tar -xvf go1.19.2.linux-amd64.tar.gz;
sudo mv go /usr/local;
export GOROOT=/usr/local/go;
export GOPATH=$HOME/go;
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH;
echo "
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
" >> /root/.bashrc;
sudo snap install amass;
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest;
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest;
go install -v github.com/projectdiscovery/interactsh/cmd/interactsh-client@latest;
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest;
apt install nmap;
apt install whois;
go install github.com/ffuf/ffuf@latest;
go install github.com/lc/gau/v2/cmd/gau@latest;
go install github.com/tomnomnom/waybackurls@latest;
go install github.com/tomnomnom/meg@latest;
go install github.com/tomnomnom/qsreplace@latest;
go install github.com/tomnomnom/gf@latest && cp ~/go/bin/gf /usr/bin/ && gf -h && mkdir ~/.gf && git clone https://github.com/Sherlock297/gf_patterns.git && cd gf_patterns/ && cp *.json ~/.gf && gf -list;
echo " Don't Forget to run ' source .bashrc ' after completion"
