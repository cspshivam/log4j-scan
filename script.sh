#!/bin/bash
domain=$1
usage(){
echo "Usage:  bash script.sh https://example.com"
}
if [ $# -eq 0 ] || [ "$1" = "-h" ]
  then
    usage
    exit
fi
echo "
╻  ┏━┓┏━╸╻ ╻┏━┓╻ ╻┏━╸╻  ╻     ┏━┓┏━╸┏━┓┏┓╻┏┓╻┏━╸┏━┓
┃  ┃ ┃┃╺┓┗━┫┗━┓┣━┫┣╸ ┃  ┃     ┗━┓┃  ┣━┫┃┗┫┃┗┫┣╸ ┣┳┛
┗━╸┗━┛┗━┛  ╹┗━┛╹ ╹┗━╸┗━╸┗━╸   ┗━┛┗━╸╹ ╹╹ ╹╹ ╹┗━╸╹┗╸
"
echo -e "                  \e[95m by CSPSHIV\e[5mΔ\e[0m\e[95mM\e[0m"
echo -e "                  \e[95m https://www.cspshivam.tk \e[0m "
echo "	"
echo "--------> Scanning Target: $1 "
echo "	"
echo "--------> Starting Default Scan "
echo "	"
#python3 log4j-scan.py -u $domain
echo "	"
echo "--------> Fuzzing Headers "
echo "	"
#python3 log4j-scan.py -u $domain --headers-file headers.txt
echo "	"
echo "--------> WAF Bypass "
echo "	"
#python3 log4j-scan.py -u $domain --waf-bypass
echo "	"
echo "--------> Testing for CVE-2021-45046 "
echo "	"
python3 log4j-scan.py -u $domain --test-CVE-2021-45046
echo "	"
echo "--------> Scan completed"
