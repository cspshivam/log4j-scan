# Log4shell Vulnerability Scanner
A fully automated, accurate, and extensive scanner for finding log4j RCE CVE-2021-44228 

# Linux
#### Installation

```$ git clone https://github.com/cspshivam/log4shell-scanner.git```

```$ cd log4shell-scanner```

```$ pip3 install -r requirements.txt```

```$ sudo chmod +x script.sh ```

```$ bash script.sh ```


#### USAGE
``` ./script.sh http://example.com ```

# Windows

#### Download ```checkjndi.ps1``` file
#### Run POWERSHELL as ADMINISTRATOR
#### Enable Script Execution policy with following commands
#### ```Set-ExecutionPolicy RemoteSigned```
#### ```Set-ExecutionPolicy Unrestricted```
#### ```Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass```
#### ```Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine```
#### Now run the script in base directory to scan whole system ``` PS C:\> .\checkjndi.ps1```
