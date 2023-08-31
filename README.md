# Ookla Speedtest

```bash
## If migrating from prior bintray install instructions please first...
sudo rm /etc/apt/sources.list.d/speedtest.list
sudo apt-get update
sudo apt-get remove speedtest
```

```bash
## Other non-official binaries will conflict with Speedtest CLI
# Example how to remove using apt-get
sudo apt-get remove speedtest-cli
```

```bash
sudo apt-get install curl
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt-get install speedtest
```

A shell script that continuously runs the `speedtest` command and restarts itself if it encounters any error...

```bash
git clone https://github.com/chmodshubham/speedtest
chmod +x run_speedtest.sh
./run_speedtest.sh
```



